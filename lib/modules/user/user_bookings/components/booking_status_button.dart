import 'package:event_booking_app/models/booking_model.dart';
import 'package:flutter/material.dart';

class BookingStatusButton extends StatelessWidget {
  const BookingStatusButton({
    Key? key,
    required this.label,
    required this.onTap,
    required this.isActive,
    required this.status,
  }) : super(key: key);

  final String label;
  final bool isActive;
  final BookingStatus status;
  final void Function(BookingStatus) onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(status),
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? const Color.fromARGB(255, 14, 0, 20) : Colors.grey[200],
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 25,
        ),
        child: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isActive ? const Color.fromARGB(255, 255, 255, 255) : Colors.black,
          ),
        ),
      ),
    );
  }
}
