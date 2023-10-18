import 'package:event_booking_app/core/constants/language_constant.dart';
import 'package:event_booking_app/utils/colors.dart';
import 'package:event_booking_app/utils/strings.dart';
import 'package:event_booking_app/modules/dashboard/components/event_list_view.dart';
import 'package:event_booking_app/shared/components/appBars/top_bar_container.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class EventDisplayScreen extends StatefulWidget {
  const EventDisplayScreen({super.key});

  @override
  State<EventDisplayScreen> createState() => _EventDisplayScreenState();
}

class _EventDisplayScreenState extends State<EventDisplayScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int selectedValue = 0;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
      child: Column(
        children: [
          TopContainer(
            title: translation(context).homePage,
            searchBarTitle: AppStrings.homePageSearchBarTitle,
          ),
          TabBar(
            controller: tabController,
            indicatorColor: Colors.transparent,
            labelColor: Colors.white,
            unselectedLabelColor: appBackgroundColor,
            indicatorSize: TabBarIndicatorSize.label,
            onTap: (value) {
              setState(() {
                selectedValue = value;
              });
              tabController.animateTo(value);
            },
            tabs: [
              Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: selectedValue == 0
                        ? appBackgroundColor
                        : appGreyColor.withOpacity(0.8),
                    boxShadow: selectedValue == 0
                        ? [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 5,
                                spreadRadius: 1,
                                offset: const Offset(0, 1))
                          ]
                        : null),
                child: const Text(
                  "Trending",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: selectedValue == 1
                        ? appBackgroundColor
                        : appGreyColor.withOpacity(0.8),
                    boxShadow: selectedValue == 1
                        ? [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 5,
                                spreadRadius: 1,
                                offset: const Offset(0, 1))
                          ]
                        : null),
                child: const Text(
                  "Clothing",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: tabController,
              children: const [
                EventDisplayWidget(),
                EventDisplayWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
