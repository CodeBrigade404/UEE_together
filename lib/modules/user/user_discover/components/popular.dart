import 'package:event_booking_app/models/discover_model.dart';
import 'package:event_booking_app/modules/user/user_discover/screens/event_details.dart';
import 'package:event_booking_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:image_card/image_card.dart';

class PopularNearYouWidget extends StatelessWidget {
  const PopularNearYouWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Discover item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: InkWell(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EventDetailsScreen(
                  item: item,
                ),
              ),
            );
          },
          child: Row(
            children: [
              TransparentImageCard(
                  width: 200,
                  height: 300,
                  imageProvider: NetworkImage(item.imageUrl),
                  contentMarginTop: 240,
                  title: Text(item.eventName,
                      style: const TextStyle(color: appGreyColor)),
                  description: Text(
                    item.description,
                    style: const TextStyle(color: appGreyColor, fontSize: 10),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.money,
                          color: Color.fromARGB(255, 4, 66, 6),
                          size: 17,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        // Example icon, replace with your desired icon
                        Text(
                          'LKR ${item.tax} / entry',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.category,
                          color: Colors.orange,
                          size: 17,
                        ),
                        const SizedBox(
                          width: 5,
                        ), // Example icon, replace with your desired icon
                        Text(
                          item.type,
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: appDarkGray,
                                  ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.red,
                          size: 17,
                        ),
                        const SizedBox(
                          width: 5,
                        ), // Example icon, replace with your desired icon
                        Text(
                          '${item.distance} kms away',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: appDarkGray,
                                  ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: startColor,
                          size: 17,
                        ),
                        const SizedBox(
                          width: 5,
                        ), // Example icon, replace with your desired icon
                        Text(
                          '4.8',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: startPointsValueColor,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
