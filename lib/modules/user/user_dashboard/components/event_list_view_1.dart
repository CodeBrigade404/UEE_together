import 'package:cached_network_image/cached_network_image.dart';
import 'package:event_booking_app/data/discover_data.dart';
import 'package:event_booking_app/models/discover_model.dart';
import 'package:event_booking_app/modules/user/user_ticket_detail/user_ticket_detail.dart';
import 'package:event_booking_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class EventDisplayWidget1 extends StatefulWidget {
  const EventDisplayWidget1({super.key});

  @override
  State<EventDisplayWidget1> createState() => _EventDisplayWidget1State();
}

class _EventDisplayWidget1State extends State<EventDisplayWidget1> {
  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      crossAxisSpacing: 15,
      crossAxisCount: 2,
      itemCount: popularEventListData2.length,
      mainAxisSpacing: 10,
      itemBuilder: (context, index) {
        return singleItemWidget(
          popularEventListData2[index],
          index == popularEventListData2.length - 1 ? true : false,
        );
      },
    );
  }

  // single item widget
  Widget singleItemWidget(Discover event, bool lastItem) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SingleEventDetailScreen(
              item: event,
            ),
          ),
        );
      },
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
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
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          topLeft: Radius.circular(8)),
                      child: CachedNetworkImage(
                        imageUrl: event.imageUrl,
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
                          Text("\$${event.tax}"),
                          const SizedBox(width: 5),
                          Text(
                            "\$${event.tax}",
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
              // Positioned(
              //   right: 5,
              //   top: 10,
              //   child: Container(
              //     height: 30,
              //     width: 30,
              //     decoration: const BoxDecoration(
              //       color: appBackgroundColor,
              //       shape: BoxShape.circle,
              //     ),
              //     alignment: Alignment.center,
              //     child: Icon(
              //       event.isLiked == true
              //           ? FontAwesomeIcons.solidHeart
              //           : FontAwesomeIcons.heart,
              //       size: 15,
              //       color: Colors.white,
              //     ),
              //   ),
              // )
            ],
          ),
          SizedBox(
            height: lastItem == true
                ? MediaQuery.of(context).size.height * 0.50
                : 0,
          )
        ],
      ),
    );
  }
}
