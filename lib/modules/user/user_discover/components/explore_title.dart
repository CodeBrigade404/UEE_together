import 'package:cached_network_image/cached_network_image.dart';
import 'package:event_booking_app/models/discover_model.dart';
import 'package:event_booking_app/modules/user/user_bookings/screens/payment_gateway.dart';
import 'package:flutter/material.dart';

class ExploreItem extends StatelessWidget {
  const ExploreItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Discover item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => EventDetailsScreen(
        //       item: item,
        //     ),
        //   ),
        // );
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Payment()),
        );
      },
      child: Container(
        width: 200,
        height: 200,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                child: CachedNetworkImage(
                  imageUrl: item.imageUrl,
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>
                      const Center(child: Icon(Icons.error)),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: Text(
                item.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Text(
                item.location,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Text(
                item.date.toString(),
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
