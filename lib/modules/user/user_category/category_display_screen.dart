import 'package:cached_network_image/cached_network_image.dart';
import 'package:event_booking_app/local_storage/data.dart';
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
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                color: Colors.grey,
                              ),
                        ),
                      ],
                    ),
                  ),
                  subtitle: Container(
                      width: MediaQuery.of(context).size.width * 0.80,
                      height: 170,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: CachedNetworkImageProvider(
                            eventCategories[index].eventThumbnailImage,
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ))),
            );
          },
        ),
      ),
    );
  }
}



// class CategoryDisplayScreen extends StatefulWidget {
//   const CategoryDisplayScreen({super.key});

//   @override
//   State<CategoryDisplayScreen> createState() => _CategoryDisplayScreenState();
// }

// class _CategoryDisplayScreenState extends State<CategoryDisplayScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
//       child: ListView(
//         children: List.generate(eventCategories.length, (index) {
//           return Card(
//             elevation: 4.0,
//             margin: const EdgeInsets.only(
//               bottom: 10.0,
//               left: 10.0,
//               right: 10.0,
//             ),
//             child: Container(
//               width: MediaQuery.of(context).size.width * 0.80,
//               height: 170,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: CachedNetworkImageProvider(
//                     eventCategories[index].eventThumbnailImage,
//                   ),
//                   fit: BoxFit.cover,
//                 ),
//                 borderRadius: BorderRadius.circular(20.0),
//               ),
//               child: Stack(
//                 children: [
//                   Positioned(
//                     top: 10, // Adjust the top position as needed
//                     left: 10, // Adjust the left position as needed
//                     child: Text(
//                       eventCategories[index].eventCategoryName,
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         }),
//       ),
//     );
//   }
// }
