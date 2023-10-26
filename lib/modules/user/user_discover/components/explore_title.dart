import 'dart:async';

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

  Future<Widget> loadImage(String imageUrl) async {
    Completer<Widget> completer = Completer();

    try {
      final image = Image.network(imageUrl);

      image.image.resolve(const ImageConfiguration()).addListener(
        ImageStreamListener((info, call) {
          completer.complete(image);
        }),
      );

      return await completer.future;
    } catch (e) {
      return Text('Image loading failed: $e');
    }
  }

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
        child: FutureBuilder(
          future: loadImage(
              item.imageUrl), // Replace loadImage with your image loading logic
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Padding(
                padding: EdgeInsets.only(left: 174.0),
                child: Center(child: CircularProgressIndicator()),
              ); // Show a loading icon
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return TransparentImageCard(
                  width: 200,
                  height: 300,
                  imageProvider: NetworkImage(item.imageUrl),
                  contentMarginTop: 240,
                  title: Text(item.eventName,
                      style: const TextStyle(color: appGreyColor)),
                  description: Text(
                    item.description,
                    style: const TextStyle(color: appGreyColor, fontSize: 10),
                  ));
            }
          },
        ),
      ),
    );
  }
}
