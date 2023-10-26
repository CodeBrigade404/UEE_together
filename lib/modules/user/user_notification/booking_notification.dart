import 'package:event_booking_app/shared/cards/card.dart';
import 'package:flutter/material.dart';

class BookingStatusChanged extends StatelessWidget {
  final String title;
  final String status;
  final String avatarImage;
  final String level;
  final String dateTime;
  final String message;


  const BookingStatusChanged({
    Key? key,
    required this.title,
    required this.status,
    required this.avatarImage,
    required this.level,
    required this.dateTime,
    required this.message,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyCard(
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.person_add,
                color: Colors.orange,
              ),
              const SizedBox(width: 5),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                status,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                child: Image.asset(
                  avatarImage,
                  fit: BoxFit.cover,
                  height: 50,
                  width: 50,
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      level,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      dateTime,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontSize: 14,
                          ),
                    ),
                    Text(message),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
