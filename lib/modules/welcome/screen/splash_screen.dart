// ignore_for_file: library_private_types_in_public_api

import 'package:event_booking_app/modules/auth/sign_in.dart';
import 'package:event_booking_app/utils/colors.dart';
import 'package:event_booking_app/utils/font_styles.dart';
import 'package:event_booking_app/utils/indictors.dart';
import 'package:event_booking_app/utils/strings.dart';
import 'package:event_booking_app/modules/welcome/components/intro_image_list_view.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          const Positioned(
            top: -10,
            left: -150,
            child: Row(
              children: [
                ImageListView(startIndex: 0),
                ImageListView(startIndex: 1),
                ImageListView(startIndex: 2),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.60,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.white60,
                    Colors.white,
                    Colors.white,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      AppStrings.introPageTitle,
                      textAlign: TextAlign.center,
                      style: introTitleStyle,
                    ),
                    Text(
                      AppStrings.introPageDescription,
                      style: introNormalStyle.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: buildIndicators(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: appBackgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                // onPressed: () async {
                //   await signInWithGoogle();
                //   if (mounted) {
                //     Navigator.push(context,
                //         MaterialPageRoute(builder: (_) => const HomeScreen()));
                //   }
                // },
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const LoginScreen()));
                },
                child: const Text(
                  AppStrings.introContinueButtonText,
                  style: TextStyle(color: appGreyColor),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
