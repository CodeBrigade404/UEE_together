// ignore_for_file: must_be_immutable

import 'package:event_booking_app/models/discover_model.dart';
import 'package:event_booking_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:ticket_widget/ticket_widget.dart';

class MyTicketView extends StatefulWidget {
  Discover item;
  int count;
  MyTicketView({Key? key, required this.item, required this.count})
      : super(key: key);

  @override
  State<MyTicketView> createState() => _MyTicketViewState();
}

class _MyTicketViewState extends State<MyTicketView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundDarker,
      body: Center(
        child: TicketWidget(
          width: 350,
          height: 600,
          isCornerRounded: true,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TicketData(item: widget.item, count: widget.count),
              QrImageView(
                data: widget.item.toString(),
                version: QrVersions.auto,
                size: 200.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TicketData extends StatelessWidget {
  Discover item;
  int count;
  TicketData({Key? key, required this.item, required this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120.0,
              height: 25.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(width: 1.0, color: Colors.green),
              ),
              child: const Center(
                child: Text(
                  'General Entrance',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(
                    Icons.insert_drive_file_outlined,
                    color: Colors.pink,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    item.ticketId,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Text(
            'E-Ticket',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12.0, right: 18),
                child: ticketDetailsWidget(
                    'Event', item.eventName, 'Date', item.eventDate),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, right: 0),
                child: ticketDetailsWidget(
                    'Price', "LKR ${item.tax.toString()}", 'Type', item.type),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, right: 52.0),
                child: ticketDetailsWidget('Count', count.toString(), '', ''),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0, top: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Location",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(item.location)
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 50,
        )
      ],
    );
  }
}

Widget ticketDetailsWidget(String firstTitle, String firstDesc,
    String secondTitle, String secondDesc) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              firstTitle,
              style: const TextStyle(color: Colors.grey),
              overflow: TextOverflow.ellipsis,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                firstDesc,
                style: const TextStyle(color: Colors.black),
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              secondTitle,
              style: const TextStyle(color: Colors.grey),
              overflow: TextOverflow.ellipsis,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                secondDesc,
                style: const TextStyle(color: Colors.black),
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      )
    ],
  );
}
