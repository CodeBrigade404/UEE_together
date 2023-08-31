// ignore_for_file: use_build_context_synchronously

import 'package:event_booking_app/Firebase/firebase_authentication.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.logout),
          onPressed: () async {
            await logout();
            Navigator.pop(context);
          },
        ),
      ),
      body: const Center(
        child: Text(
          "Home Screen",
          style: TextStyle(color: Colors.grey, fontSize: 30),
        ),
      ),
    );
  }
}
