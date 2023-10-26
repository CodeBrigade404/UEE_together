import 'package:cached_network_image/cached_network_image.dart';
import 'package:event_booking_app/data/event_data.dart';
import 'package:event_booking_app/shared/appbars/default_appbar.dart';
import 'package:flutter/material.dart';

class CategoryDisplayScreen extends StatefulWidget {
  const CategoryDisplayScreen({Key? key}) : super(key: key);

  @override
  State<CategoryDisplayScreen> createState() => _CategoryDisplayScreenState();
}

class _CategoryDisplayScreenState extends State<CategoryDisplayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Categories',
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: eventCategories.length,
          itemBuilder: (context, index) {
            final eventCategory = eventCategories[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          eventCategory.eventCategoryName,
                          textAlign: TextAlign.left,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          eventCategory.description,
                          textAlign: TextAlign.left,
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    color: Colors.grey,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  subtitle: CachedNetworkImage(
                    imageUrl: eventCategories[index].eventThumbnailImage,
                    placeholder: (context, url) => const Icon(Icons.error),
                    errorWidget: (context, url, error) => const Icon(
                        Icons.error), // Show an error icon if there's an error.
                    imageBuilder: (context, imageProvider) => Container(
                      width: MediaQuery.of(context).size.width * 0.80,
                      height: 170,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  )),
            );
          },
        ),
      ),
    );
  }
}
