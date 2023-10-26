// ignore_for_file: use_build_context_synchronously

import 'package:dio/dio.dart';
import 'package:event_booking_app/modules/user/user_bookings/components/booking_payment_behavior.dart';
import 'package:event_booking_app/modules/user/user_bookings/screens/qr_gen.dart';
import 'package:event_booking_app/shared/appbars/default_appbar.dart';
import 'package:event_booking_app/shared/buttons/default_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class EventBookingForm extends StatefulWidget {
  const EventBookingForm({super.key});

  @override
  State<EventBookingForm> createState() => _EventBookingFormState();
}

class _EventBookingFormState extends State<EventBookingForm>
    with PaymentBehavior {
  bool showProgress = false;

  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController ticketsController = TextEditingController();
  bool _isAgreedToPolicy = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Pay",
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(12),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 40),
                      // ignore: prefer_const_constructors
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Event Booking",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "please fell free to fill correct information",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black87),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Your Name',
                          enabled: true,
                          contentPadding: const EdgeInsets.all(16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Name cannot be empty";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Email',
                          enabled: true,
                          contentPadding: const EdgeInsets.all(16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email cannot be empty";
                          }
                          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                              .hasMatch(value)) {
                            return "Please enter a valid email";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: mobileController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Contact Number',
                          enabled: true,
                          contentPadding: const EdgeInsets.all(16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Contact number cannot be empty";
                          }
                          // You can add more validation for the phone number here.
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: ticketsController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Number of Tickets',
                          enabled: true,
                          contentPadding: const EdgeInsets.all(16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Number of tickets cannot be empty";
                          }
                          // You can add more validation for the number of tickets here.
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      CheckboxListTile(
                        value: _isAgreedToPolicy,
                        title:
                            const Text("I agree to the event booking policy"),
                        onChanged: (value) {
                          setState(() {
                            _isAgreedToPolicy = value!;
                          });
                        },
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: DefaultButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate() &&
                                _isAgreedToPolicy) {
                              createPaymentIntent();
                            }
                          },
                          buttonText: 'Pay',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

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
      await Stripe.instance.presentPaymentSheet().then((value) {
        setState(() {
          isProcessing = false;
        });
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("paid successfully")));
        PersistentNavBarNavigator.pushNewScreen(
          context,
          screen: const GenerateQrCodePage(),
          withNavBar: false,
          pageTransitionAnimation: PageTransitionAnimation.cupertino,
        );
      });
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
}
