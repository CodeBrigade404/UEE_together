import 'package:event_booking_app/modules/user/user_discover/screens/discover.dart';
import 'package:event_booking_app/modules/user/user_profile/profile.dart';
import 'package:event_booking_app/modules/user/user_category/category_display_screen.dart';
import 'package:event_booking_app/modules/user/user_flowing/artists_display_screen.dart';
import 'package:flutter/material.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({Key? key}) : super(key: key);

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  var currentIndex = 0;
  late final List<Widget> _screens;

  @override
  void initState() {
    _screens = [
      const DiscoverScreen(),
      const CategoryDisplayScreen(),
      const FollowingPage(),
      const ProfileScreen(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFFF9F2FD),
      body: _screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black45,
        unselectedLabelStyle: const TextStyle(color: Colors.black45),
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w900),
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
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
        onTap: (index) => setState(() => currentIndex = index),
      ),
    );
  }
}
