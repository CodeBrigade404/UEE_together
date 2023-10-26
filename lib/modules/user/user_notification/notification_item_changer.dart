import 'package:event_booking_app/modules/user/user_notification/booking_notification.dart';
import 'package:event_booking_app/modules/user/user_notification/friend_join_notification.dart';
import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  final bool isFriendJoinNotify;
  final String title;
  final String status;
  final String avatarImage;
  final String level;
  final String dateTime;
  final String message;
  final String partyName;
  final String inviterName;

  const NotificationItem({
    Key? key,
    required this.isFriendJoinNotify,
    required this.title,
    required this.status,
    required this.avatarImage,
    required this.level,
    required this.dateTime,
    required this.message,
    required this.partyName,
    required this.inviterName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isFriendJoinNotify
        ? FriendJoinedEvent(
            avatarImage: avatarImage,
            partyName: partyName,
            inviterName: inviterName,
          )
        : BookingStatusChanged(
            title: title,
            status: status,
            avatarImage: avatarImage,
            level: level,
            dateTime: dateTime,
            message: message,
          );
  }
}
