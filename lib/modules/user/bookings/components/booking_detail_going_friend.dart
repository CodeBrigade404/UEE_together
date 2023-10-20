import 'package:event_booking_app/core/assets.dart';
import 'package:event_booking_app/core/widgets/card.dart';
import 'package:flutter/material.dart';

class GoingFriendsWidget extends StatelessWidget {
  const GoingFriendsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyCard(
      child: Row(
        children: [
          SizedBox(
            width: 50,
            child: Stack(
              children: [
                ClipOval(
                  child: Image.asset(
                    Assets.avatar,
                    fit: BoxFit.cover,
                    height: 30,
                    width: 30,
                  ),
                ),
                Positioned(
                  right: 0,
                  child: ClipOval(
                    child: Image.asset(
                      Assets.avatar1,
                      fit: BoxFit.cover,
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          const Text('You & K-C are going'),
        ],
      ),
    );
  }
}
