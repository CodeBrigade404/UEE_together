import 'package:event_booking_app/modules/auth/sign_in/sign_in.dart';
import 'package:event_booking_app/modules/user/user_bookings/screens/bookings.dart';
import 'package:event_booking_app/modules/user/user_discover/screens/discover.dart';
import 'package:event_booking_app/modules/user/user_discover/screens/notifications.dart';
import 'package:event_booking_app/modules/user/user_profile/profile.dart';
import 'package:event_booking_app/modules/user/user_category/category_display_screen.dart';
import 'package:event_booking_app/modules/user/user_dashboard/components/language_popup.dart';
import 'package:event_booking_app/modules/user/user_flowing/artists_display_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({Key? key}) : super(key: key);

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  var currentIndex = 0;

  final discover = const DiscoverScreen();

  final category = const CategoryDisplayScreen();
  final bookings = const BookingsScreen();
  final following = const FollowingPage();

  final profile = const ProfileScreen();

  late List<Widget> _screens;

  @override
  void initState() {
    _screens = [
      discover,
      category,
      following,
      profile,
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 249, 242, 253),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 4.0,
        centerTitle: true,
        title: const Text(
          "ȶօɢɛȶɦɛʀ",
          style: TextStyle(color: Colors.black87, fontSize: 20),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            // Add this IconButton for Notifications
            icon: const Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationsScreen(),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {
                LanguageDialog.showLanguageDialog(context, (p0) => null);
              },
              child: const Icon(
                FontAwesomeIcons.globe,
                color: Colors.black87,
                size: 20,
              ),
            ),
          )
        ],
      ),
      body: _screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black, // Set the selected item color to black
        unselectedItemColor: Colors.black45,
        unselectedLabelStyle: const TextStyle(color: Colors.black45),
        currentIndex: currentIndex,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.follow_the_signs),
            label: 'Following',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) => setState(() => currentIndex = index),
      ),
    );
  }
}
