import 'package:cached_network_image/cached_network_image.dart';
import 'package:event_booking_app/models/discover_model/discover_model.dart';
import 'package:event_booking_app/modules/user/discover/screens/event_details.dart';
import 'package:flutter/material.dart';

class PopularNearYouWidget extends StatelessWidget {
  const PopularNearYouWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Discover item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const EventDetailsScreen(),
            ),
          );
        },
        child: Row(
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                    child: CachedNetworkImage(
                      width: 180,
                      height: 200,
                      imageUrl: item.imageUrl,
                      fit: BoxFit.cover,
                      placeholder: (context, url) =>
                          const Center(child: Icon(Icons.error)),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text(
                    '\$${item.tax} / entry',
                  ),
                  Text(
                    item.type,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.grey,
                        ),
                  ),
                  Row(
                    children: [
                      Text(
                        '${item.distance} kms away',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                      const SizedBox(width: 5),
                      const Text('·'),
                      const SizedBox(width: 5),
                      Text(
                        '4.8',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.blue,
                            ),
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
