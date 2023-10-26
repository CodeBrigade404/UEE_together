import 'package:event_booking_app/shared/cards/card.dart';
import 'package:flutter/material.dart';

class FriendJoinedEvent extends StatelessWidget {
  final String avatarImage;
  final String partyName;
  final String inviterName;

  const FriendJoinedEvent({
    Key? key,
    required this.avatarImage,
    required this.partyName,
    required this.inviterName,
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
                      partyName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: inviterName,
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          const TextSpan(
                            text: ' just accepted your invitation',
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
                  avatarImage,
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
