import 'package:event_booking_app/core/widgets/card.dart';
import 'package:event_booking_app/models/booking_model/booking_model.dart';
import 'package:event_booking_app/modules/user/bookings/components/booking_event_list_item.dart';
import 'package:event_booking_app/modules/user/bookings/components/booking_status_button.dart';
import 'package:flutter/material.dart';

class BookingsScreen extends StatefulWidget {
  const BookingsScreen({Key? key}) : super(key: key);

  @override
  State<BookingsScreen> createState() => _BookingsScreenState();
}

class _BookingsScreenState extends State<BookingsScreen> {
  BookingStatus _selectedStatus = BookingStatus.Bookings;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BookingStatusButton(
                label: 'Bookings',
                onTap: _onStatusChange,
                status: BookingStatus.Bookings,
                isActive: _selectedStatus == BookingStatus.Bookings,
              ),
              const SizedBox(
                width: 20,
              ),
              BookingStatusButton(
                label: 'History',
                onTap: _onStatusChange,
                status: BookingStatus.History,
                isActive: _selectedStatus == BookingStatus.History,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              child: Column(
                children: _generateEventList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onStatusChange(BookingStatus status) {
    setState(() => _selectedStatus = status);
  }

  List<Widget> _generateEventList() {
    final filteredBookings = sampleBookings
        .where((booking) => booking.status == _selectedStatus)
        .toList();

    return filteredBookings.map((booking) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
        child: MyCard(
          child: Column(
            children: [
              EventListItem(
                  time: booking.time,
                  eventName: booking.eventName,
                  venueName: booking.venueName,
                  date: booking.date,
                  bookingId: booking.bookingId,
                  images: booking.images),
            ],
          ),
        ),
      );
    }).toList();
  }
}
