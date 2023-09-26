import 'package:event_booking_app/screens/profile_page.dart';
import 'package:event_booking_app/utils/colors.dart';
import 'package:event_booking_app/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';

class TopContainer extends StatelessWidget {
  final String title;
  final String searchBarTitle;
  const TopContainer({
    super.key,
    required this.title,
    required this.searchBarTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // title
        Row(
          children: [
            Text(
              title,
              style: introNormalStyle.copyWith(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: appGreyColor.withOpacity(0.8),
              ),
              child: Stack(
                children: [
                  const Icon(
                    FontAwesomeIcons.bell,
                    color: Colors.black87,
                    size: 20,
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      height: 8,
                      width: 8,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: appOrangeColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: CachedNetworkImage(
                  imageUrl:
                      "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fG1lbiUyMHBob3RvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),

        // search bar
        Container(
          margin: const EdgeInsets.symmetric(vertical: 30),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: appGreyColor.withOpacity(0.8),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Row(
            children: [
              const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20,
              ),
              const SizedBox(width: 10),
              Text(
                searchBarTitle,
                style: const TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
