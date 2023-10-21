import 'package:event_booking_app/core/constants/assets_constants.dart';
import 'package:event_booking_app/shared/buttons/button.dart';
import 'package:event_booking_app/shared/cards/card.dart';
import 'package:flutter/material.dart';

class InviteFriendsCard extends StatelessWidget {
  const InviteFriendsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyCard(
      child: Column(
        children: [
          Row(
            children: [
              ClipOval(
                child: Image.asset(
                  Assets.avatar,
                  fit: BoxFit.cover,
                  height: 70,
                  width: 70,
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Dance Dance Studio',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                          text: 'K-C',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '  accepted your invitation',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const MyWideButton(
            label: 'Invite Friends',
          ),
        ],
      ),
    );
  }
}
