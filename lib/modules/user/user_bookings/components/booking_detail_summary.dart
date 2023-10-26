import 'package:event_booking_app/shared/cards/card.dart';
import 'package:flutter/material.dart';

class SummaryWidget extends StatefulWidget {
  final String eventName;
  final int tax;
  final String type;
  final double distance;
  final String date;
  final String eventTime;
  final String eventVenue;

  const SummaryWidget({
    Key? key,
    required this.eventName,
    required this.tax,
    required this.type,
    required this.distance,
    required this.date,
    required this.eventTime,
    required this.eventVenue,
  }) : super(key: key);

  @override
  State<SummaryWidget> createState() => _SummaryWidgetState();
}

class _SummaryWidgetState extends State<SummaryWidget> {
  @override
  Widget build(BuildContext context) {
    return MyCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'SUMMARY',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.eventName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'LKR ${widget.tax} .00',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '${widget.date} |    ${widget.eventTime} PM |    ${widget.distance} miles',
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Event Type: ${widget.type}',
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Venue: ${widget.eventVenue}',
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
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
