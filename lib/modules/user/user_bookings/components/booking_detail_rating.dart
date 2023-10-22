import 'package:event_booking_app/shared/buttons/button.dart';
import 'package:event_booking_app/shared/cards/card.dart';
import 'package:flutter/material.dart';

class RatingReviewsWidget extends StatelessWidget {
  const RatingReviewsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyCard(
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.yellow.shade100,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            padding: const EdgeInsets.all(5),
            child: const Row(
              children: [
                Text(
                  '4.8',
                  style: TextStyle(
                    fontSize: 28,
                    color: Color.fromARGB(255, 255, 230, 0),
                  ),
                ),
                Icon(
                  Icons.star_rounded,
                  color: Color.fromARGB(255, 255, 230, 0),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          const Expanded(
            child: Text(
              '324 Ratings',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          MyButton(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 15,
            ),
            label: 'Reviews',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
