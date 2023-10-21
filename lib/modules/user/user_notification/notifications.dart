import 'package:event_booking_app/data/notification_data.dart';
import 'package:event_booking_app/modules/user/user_notification/notification_item_changer.dart';
import 'package:event_booking_app/shared/appbars/default_appbar.dart';
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
      appBar: const CustomAppBar(
        title: 'ɴᴏᴛɪꜰɪᴄᴀᴛɪᴏɴꜱ',
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        controller: controller,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: notifications.map((notification) {
              return NotificationItem(
                  title: notification.title,
                  status: notification.status,
                  avatarImage: notification.avatarImage,
                  level: notification.level,
                  dateTime: notification.dateTime,
                  message: notification.message,
                  partyName: notification.partyName,
                  inviterName: notification.inviterName,
                  isFriendJoinNotify: notification.isFriendJoinNotify);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
