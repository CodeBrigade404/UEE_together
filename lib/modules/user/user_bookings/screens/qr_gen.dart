// ignore_for_file: must_be_immutable

import 'package:event_booking_app/models/discover_model.dart';
import 'package:event_booking_app/modules/user/user_bookings/screens/ticket_view.dart';
import 'package:event_booking_app/shared/appbars/default_appbar.dart';
import 'package:flutter/material.dart';

class GenerateQrCodePage extends StatefulWidget {
  Discover item;
  int count;
  GenerateQrCodePage({Key? key, required this.item, required this.count})
      : super(key: key);

  @override
  State<GenerateQrCodePage> createState() => _GenerateQrCodePageState();
}

class _GenerateQrCodePageState extends State<GenerateQrCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "E-Ticket",
        showBackButton: true,
      ),
      body: MyTicketView(item: widget.item, count: widget.count),
    );
  }
}
