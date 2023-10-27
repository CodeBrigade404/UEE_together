import 'package:event_booking_app/modules/user/user_dashboard/components/event_list_view.dart';
import 'package:flutter/material.dart';

class EventDisplayScreen extends StatefulWidget {
  const EventDisplayScreen({
    Key? key,
  }) : super(key: key);

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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        physics:
            const NeverScrollableScrollPhysics(), // This line makes it non-scrollable
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: TabBarView(
            controller: tabController,
            children: const [
              EventDisplayWidget(),
              EventDisplayWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
