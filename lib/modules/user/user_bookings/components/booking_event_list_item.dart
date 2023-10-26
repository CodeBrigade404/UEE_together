import 'package:event_booking_app/modules/user/user_bookings/screens/booking_details.dart';
import 'package:flutter/material.dart';

class EventListItem extends StatelessWidget {
  final String time;
  final String? eventName;
  final String venueName;
  final DateTime date;
  final String bookingId;
  final List<String>? images;

  const EventListItem({
    Key? key,
    required this.time,
    required this.eventName,
    required this.venueName,
    required this.date,
    required this.bookingId,
    this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BookingDetailsScreen(
                time: time,
                eventName: eventName,
                venueName: venueName,
                date: date,
                bookingId: bookingId,
                images: images,
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.movie_filter),
                  title: Text(eventName!),
                  subtitle: Text(venueName),
                ),
                const Divider(thickness: 1)
              ],
            ),
          ),
        )
        // child: Row(
        //   children: [
        //     SizedBox(
        //       width: 80,
        //       child: Text(time),
        //     ),
        //     Expanded(
        //       child: Container(
        //         decoration: BoxDecoration(
        //           color: Colors.grey[200],
        //           borderRadius: const BorderRadius.all(
        //             Radius.circular(10),
        //           ),
        //         ),
        //         padding: const EdgeInsets.all(10),
        //         child: Row(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 Text(
        //                   eventName??"",
        //                   style: Theme.of(context).textTheme.titleMedium,
        //                 ),
        //                 Text(
        //                   venueName,
        //                   style: Theme.of(context).textTheme.titleSmall,
        //                 ),
        //               ],
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ],
        // ),

        );
  }
}
