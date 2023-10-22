import 'package:event_booking_app/modules/user/user_bookings/screens/bookings.dart';
import 'package:event_booking_app/modules/user/user_dashboard/screen/home_screen.dart';
import 'package:event_booking_app/modules/user/user_discover/screens/discover.dart';
import 'package:event_booking_app/modules/user/user_profile/profile.dart';
import 'package:event_booking_app/modules/user/user_category/user_event_category_screen.dart';
import 'package:event_booking_app/modules/user/user_flowing/artists_display_screen.dart';
import 'package:event_booking_app/utils/colors.dart';
import 'package:flutter/material.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({Key? key}) : super(key: key);

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  var currentIndex = 0;
  late final List<Widget> _screens;

  // Define properties for animation and elevation
  double elevation = 0;
  int animationDuration = 300; // Change this value as needed

  @override
  void initState() {
    _screens = [
      const DiscoverScreen(),
      const CategoryDisplayScreen(),
      const FollowingPage(),
      const     HomeScreen(),
      const ProfileScreen(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: _screens[currentIndex],
      bottomNavigationBar: AnimatedContainer(
        duration: Duration(milliseconds: animationDuration),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: elevation, // Change the blur radius as needed
            ),
          ],
        ),
        child: BottomNavigationBar(
          elevation: 0, // Set to 0 to prevent double shadow
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black45,
          unselectedLabelStyle: const TextStyle(color: Colors.black45),
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
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
                Icons.bookmark,
              ),
              label: 'Bookings',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
              elevation = 10; // Adjust the elevation for shadow
            });

            // Delayed reset of elevation to 0 for smooth shadow transition
            Future.delayed(Duration(milliseconds: animationDuration), () {
              setState(() {
                elevation = 0;
              });
            });
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add the action you want to perform when the button is pressed here.
          // For example, navigate to a chat screen.
        }, // You can use any other icon you like
        backgroundColor: appDarkGray,
        child: const Icon(
          Icons.chat,
          color: Colors.white,
        ), // Change the color as needed
      ),
    );
  }
}
