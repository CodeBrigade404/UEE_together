import 'package:event_booking_app/core/constants/assets_constants.dart';
import 'package:event_booking_app/modules/user/user_bookings/components/booking_detail_rating.dart';
import 'package:event_booking_app/modules/user/user_bookings/components/booking_detail_going_friend.dart';
import 'package:event_booking_app/modules/user/user_bookings/components/booking_detail_invite_friend.dart';
import 'package:event_booking_app/modules/user/user_bookings/components/booking_detail_summary.dart';
import 'package:event_booking_app/modules/user/user_bookings/components/booking_image_slider.dart';
import 'package:flutter/material.dart';

class BookingDetailsScreen extends StatefulWidget {
  final String time;
  final String? eventName;
  final String venueName;
  final DateTime date;
  final String bookingId;
  final List<String>? images;

  const BookingDetailsScreen({
    Key? key,
    required this.time,
    required this.eventName,
    required this.venueName,
    required this.date,
    required this.bookingId,
    this.images,
  }) : super(key: key);

  @override
  State<BookingDetailsScreen> createState() => _BookingDetailsScreenState();
}

class _BookingDetailsScreenState extends State<BookingDetailsScreen> {
  final controller = ScrollController();
  final List<String> coverImages = [
    Assets.event1,
    Assets.event2,
    Assets.event3,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Booking details',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: controller,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              CoverImageSlider(coverImages: coverImages),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  'Booking registered on 12/12/2021 05:00 PM · #9810941',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              SummaryWidget(
                eventName: widget.eventName ??"",
              ),
              const GoingFriendsWidget(),
              const RatingReviewsWidget(),
              const InviteFriendsCard(),
            ],
          ),
        ),
      ),
    );
  }
}
