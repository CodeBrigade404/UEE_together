import 'package:event_booking_app/core/assets.dart';
import 'package:event_booking_app/core/widgets/card.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Clear',
              style: TextStyle(color: Colors.black54),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: controller,
        child: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            children: [
              _FriendJoinedEvent(),
              _BookingStatusChanged(),
              _BookingStatusChanged(),
              _BookingStatusChanged(),
              _BookingStatusChanged(),
            ],
          ),
        ),
      ),
    );
  }
}

class _BookingStatusChanged extends StatelessWidget {
  const _BookingStatusChanged({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyCard(
      child: Column(
        children: [
          const Row(
            children: [
              Icon(
                Icons.person_add,
                color: Colors.orange,
              ),
              SizedBox(width: 5),
              Text(
                'Booking',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
              SizedBox(width: 10),
              Text(
                'CANCELLED',
                style: TextStyle(
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
                  Assets.avatar,
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
                      'Level 57',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '03/24/2022 · 05:00 PM',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontSize: 14,
                          ),
                    ),
                    const Text('Transaction Declined'),
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

class _FriendJoinedEvent extends StatelessWidget {
  const _FriendJoinedEvent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyCard(
      child: Column(
        children: [
          const Row(
            children: [
              Icon(
                Icons.person_add,
                color: Colors.blue,
              ),
              SizedBox(width: 5),
              Text(
                'A FRIEND JUST JOINED YOUR PARTY',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              ClipOval(
                child: Image.asset(
                  Assets.avatar,
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
                    const Text(
                      'VR Realm 247',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Roger',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: ' just accepted your invasion',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                child: Image.asset(
                  Assets.avatar,
                  fit: BoxFit.cover,
                  height: 50,
                  width: 50,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Material(
              color: Colors.grey[300],
              borderRadius: const BorderRadius.all(
                Radius.circular(50),
              ),
              child: InkWell(
                onTap: () {},
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Center(
                    child: Text(
                      'Join the Chat',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
