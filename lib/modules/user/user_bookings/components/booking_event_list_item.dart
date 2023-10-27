import 'package:event_booking_app/modules/user/user_bookings/screens/booking_details.dart';
import 'package:flutter/material.dart';

class EventListItem extends StatelessWidget {
  final String time;
  final String? eventName;
  final String venueName;
  final DateTime date;
  final String bookingId;
  final List<String>? images;
  final String liveStatus;

  const EventListItem({
    Key? key,
    required this.time,
    required this.eventName,
    required this.venueName,
    required this.date,
    required this.bookingId,
    required this.liveStatus,
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
          child: Column(
            children: [
              ListTile(
                leading: const Icon(Icons.movie_filter),
                title: Text(eventName!,style: TextStyle(fontSize: 14),),
                subtitle: Text(venueName),
                trailing: Container(
                    height: 35,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffeeeeee)),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: MaterialButton(
                      elevation: 0,
                      color: const Color(0xffeeeeee),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(liveStatus,
                          style: const TextStyle(color: Colors.black)),
                    )),
              ),
              const Divider(thickness: 1)
            ],
          ),
        ));
  }
}
