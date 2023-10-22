import 'package:event_booking_app/models/discover_model.dart';
import 'package:event_booking_app/modules/user/user_ticket_detail/user_ticket_detail.dart';
import 'package:event_booking_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:image_card/image_card.dart';

class ExploreItem extends StatelessWidget {
  const ExploreItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Discover item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SingleEventDetailScreen(
                  item: item,
                ),
              ),
            );
          },
          child: TransparentImageCard(
              width: 200,
              height: 300,
              imageProvider: NetworkImage(item.imageUrl),
              // tags: [
              //   MyButton(
              //     padding: const EdgeInsets.symmetric(
              //       vertical: 8,
              //       horizontal: 15,
              //     ),
              //     label: 'Reviews',
              //     onTap: () {},
              //   )
              // ],
              contentMarginTop: 240,
              title: Text(item.eventName, style: TextStyle(color: appGreyColor)),
              description: Text(
                item.description,
                style: const TextStyle(color: appGreyColor,fontSize: 10),
              )
    
              // child: Card(
              //   child: SizedBox(
              //     width: 200,
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Expanded(
              //           child: ClipRRect(
              //             borderRadius: const BorderRadius.all(
              //               Radius.circular(10),
              //             ),
              //             child: CachedNetworkImage(
              //               imageUrl: item.imageUrl,
              //               fit: BoxFit.cover, // Adjust the fit property here
              //               placeholder: (context, url) =>
              //                   const Center(child: Icon(Icons.error)),
              //               errorWidget: (context, url, error) =>
              //                   const Icon(Icons.error),
              //             ),
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.symmetric(
              //             vertical: 10,
              //             horizontal: 10,
              //           ),
              //           child: Text(
              //             item.title,
              //             maxLines: 1,
              //             overflow: TextOverflow.ellipsis,
              //             style: Theme.of(context).textTheme.titleSmall,
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.symmetric(
              //             horizontal: 10,
              //           ),
              //           child: Text(
              //             item.location,
              //             style: Theme.of(context).textTheme.bodySmall,
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.symmetric(
              //             horizontal: 10,
              //           ),
              //           child: Text(
              //             item.date.toString(),
              //             style: Theme.of(context).textTheme.bodySmall,
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
    
              )),
    );
  }
}
