// ignore_for_file: use_build_context_synchronously

import 'package:dio/dio.dart';
import 'package:event_booking_app/modules/user/user_bookings/components/booking_payment_behavior.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> with PaymentBehavior {
  void createPaymentIntent() async {
    setState(() {
      isProcessing = true;
    });
    try {
      Response response = await dio.post(
          'https://api.stripe.com/v1/payment_intents',
          data: {
            'amount': '5000',
            'currency': 'USD',
            'payment_method_types[]': 'card'
          },
          options: Options(headers: {
            //use Stripe account secret key is here after Bearer
            'Authorization':
                'Bearer sk_test_51MxQq3J2jbmVzZDL53odxJ4abCDu3Nbfp6gOVVjyXpQYHhxHxiejH92iMhfnScw5jbkDUPpmK10CJQRwsUaUjoZP00Q1UKyqtk',
            'Content-Type': 'application/x-www-form-urlencoded'
          }));
      initThePaymentSheet(stripeApiResponse: response.data);
    } catch (err) {
      setState(() {
        isProcessing = false;
      });
      debugPrint(
          'error in createPaymentIntent in Dio post API charging user: ${err.toString()}');
    }
  }

  void initThePaymentSheet(
      {required Map<String, dynamic> stripeApiResponse}) async {
    try {
      await Stripe.instance.initPaymentSheet(
          paymentSheetParameters: SetupPaymentSheetParameters(
              paymentIntentClientSecret: stripeApiResponse['client_secret'],
              style: ThemeMode.system,
              merchantDisplayName: 'Usama'));

      displayPaymentSheet(stripeApiResponse: stripeApiResponse);
    } catch (e, s) {
      setState(() {
        isProcessing = false;
      });
      debugPrint('exception in initPaymentSheet method:$e$s');
    }
  }

  void displayPaymentSheet(
      {required Map<String, dynamic> stripeApiResponse}) async {
    try {
      await Stripe.instance.presentPaymentSheet();
      setState(() {
        isProcessing = false;
      });
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("paid successfully")));
    } on StripeException catch (e) {
      setState(() {
        isProcessing = false;
      });
      debugPrint(
          ' on StripeException: Exception in displaying payment sheet  ${e.toString()}');
      setState(() {
        isProcessing = false;
      });
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.error.message.toString())));
    } catch (e) {
      setState(() {
        isProcessing = false;
      });
      debugPrint(
          'Exception in displaying payment sheet in general catch ${e.toString()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stripe Integration'),
      ),
      body: Stack(
        children: [
          Center(
            child: isProcessing
                ? const CircularProgressIndicator()
                : OutlinedButton(
                    onPressed: () async {
                      createPaymentIntent();
                    },
                    child: const Text(
                      'Pay with stripe 50\$ ',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
