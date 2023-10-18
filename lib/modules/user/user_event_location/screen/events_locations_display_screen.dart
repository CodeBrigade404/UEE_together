import 'package:flutter/material.dart';

class EventLocationsScreen extends StatefulWidget {
  const EventLocationsScreen({Key? key}) : super(key: key);

  @override
  State<EventLocationsScreen> createState() => _EventLocationsScreenState();
}

class _EventLocationsScreenState extends State<EventLocationsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Location")),
    );
  }
}
