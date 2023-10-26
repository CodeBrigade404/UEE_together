import 'package:event_booking_app/Firebase/firebase_authentication.dart';
import 'package:event_booking_app/modules/user/user_ctrl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthProviders extends StatefulWidget {
  const AuthProviders({super.key});

  @override
  State<AuthProviders> createState() => _AuthProvidersState();
}

class _AuthProvidersState extends State<AuthProviders> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Row(
            children: [
              Flexible(child: Divider(thickness: 2)),
              Text(" OR "),
              Flexible(
                child: Divider(thickness: 2),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () async {
                  await signInWithGoogle();
                  if (mounted) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const UserController()));
                  }
                },
                child: SvgPicture.asset(
                  'assets/images/google.svg',
                  width: 48,
                  height: 48,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  'assets/images/Facebook.svg',
                  width: 48,
                  height: 48,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
