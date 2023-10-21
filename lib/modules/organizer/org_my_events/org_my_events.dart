import 'package:event_booking_app/data/organizer_event.dart';
import 'package:event_booking_app/modules/organizer/org_my_events/components/org_single_event.dart';
import 'package:flutter/material.dart';

class MyEventsScreen extends StatefulWidget {
  const MyEventsScreen({Key? key}) : super(key: key);

  @override
  State<MyEventsScreen> createState() => _MyEventsScreenState();
}

class _MyEventsScreenState extends State<MyEventsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Column(
          children:
              eventList.map((event) => SingleEvent(event: event)).toList(),
        ),
      ),
    );
  }
}
