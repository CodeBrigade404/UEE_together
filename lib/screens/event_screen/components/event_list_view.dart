import 'package:event_booking_app/local_storage/intro_data.dart';
import 'package:event_booking_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EventDisplayWidget extends StatefulWidget {
  const EventDisplayWidget({super.key});

  @override
  State<EventDisplayWidget> createState() => _EventDisplayWidgetState();
}

class _EventDisplayWidgetState extends State<EventDisplayWidget> {
  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      crossAxisSpacing: 15,
      crossAxisCount: 2,
      itemCount: events.length,
      mainAxisSpacing: 10,
      itemBuilder: (context, index) {
        return singleItemWidget(
          events[index],
          index == events.length - 1 ? true : false,
        );
      },
    );
  }

  // single item widget
  Widget singleItemWidget(Event event, bool lastItem) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: const Offset(1, 1),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(28),
                    child: CachedNetworkImage(
                      imageUrl: event.eventImageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                      right: 8.0,
                      top: 10.0,
                    ),
                    child: Text(
                      event.eventName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Row(
                      children: [
                        Text("\$${event.eventCurrentTicketPrice}"),
                        const SizedBox(width: 5),
                        Text(
                          "\$${event.eventCurrentTicketPrice}",
                          style: const TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: appRedColor,
                            decorationThickness: 2,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              right: 5,
              top: 10,
              child: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  color: appBackgroundColor,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Icon(
                  event.isLiked == true
                      ? FontAwesomeIcons.solidHeart
                      : FontAwesomeIcons.heart,
                  size: 15,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height:
              lastItem == true ? MediaQuery.of(context).size.height * 0.50 : 0,
        )
      ],
    );
  }
}
