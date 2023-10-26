import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event_booking_app/data/organizer_event.dart';
import 'package:event_booking_app/models/organizer_model.dart';
import 'package:event_booking_app/modules/organizer/org_my_events/components/org_single_event.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyEventsScreen extends StatefulWidget {
  const MyEventsScreen({Key? key}) : super(key: key);

  @override
  State<MyEventsScreen> createState() => _MyEventsScreenState();
}

class _MyEventsScreenState extends State<MyEventsScreen> {
  List<OrganizerEvent> eventsList = [];
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    try {
      var records = await FirebaseFirestore.instance.collection('events').get();
      //print inside data
      // print(records.docs[0].data());
      mapRecords(records);
    } catch (e) {
      print(e);
    }
  }

  mapRecords(QuerySnapshot records) {
    List<OrganizerEvent> events = [];
    for (var record in records.docs) {
      print(record.id);
      events.add(
        OrganizerEvent(
          id: record.id,
          title: record['title'],
          type: record['type'],
          image: record['image'],
          description: record['description'],
          location: record['location'],
          date: record['date'],
          price: record['price'],
          quantity: record['quantity'],
          startTime: record['startTime'],
          endTime: record['endTime'],
        ),
      );
    }
    setState(() {
      eventsList = events;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget content;

    if (eventsList.isEmpty) {
      content = Center(
        child: Text(
          "No events found",
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
      print("empty");
    } else {
      content = SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Column(
          children:
              eventsList.map((event) => SingleEvent(event: event)).toList(),
        ),
      );
    }
    return Scaffold(backgroundColor: Colors.white, body: content);
  }
}
