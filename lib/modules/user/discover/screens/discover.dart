import 'package:event_booking_app/core/constants/language_constant.dart';
import 'package:event_booking_app/models/discover_model/discover_model.dart';
import 'package:event_booking_app/modules/user/discover/components/explore_title.dart';
import 'package:event_booking_app/modules/user/discover/components/popular.dart';
import 'package:event_booking_app/modules/user/discover/components/title.dart';
import 'package:flutter/material.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 10),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child:
                  DiscoverTitle(title: translation(context).discoverUpComing),
            ),
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                children: [
                  for (var item in discoverUpComingEventImages)
                    ExploreItem(item: item),
                ],
              ),
            ),
            DiscoverTitle(title: translation(context).discoverNearYou),
            for (var item in discoverEventImages)
              PopularNearYouWidget(item: item),
          ],
        ),
      ),
    );
  }
}
