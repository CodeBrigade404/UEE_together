import 'package:event_booking_app/modules/auth/sign_in/sign_in.dart';
import 'package:event_booking_app/modules/user/bookings/bookings.dart';
import 'package:event_booking_app/modules/user/discover/discover.dart';
import 'package:event_booking_app/modules/user/profile/profile.dart';
import 'package:event_booking_app/modules/user/user_dashboard/components/language_popup.dart';
import 'package:event_booking_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({Key? key}) : super(key: key);

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  var currentIndex = 0;

  final discover = DiscoverScreen();
  final bookings = BookingsScreen();
  final profile = ProfileScreen();

  late List<Widget> _screens;

  @override
  void initState() {
    _screens = [discover, bookings, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                LanguageDialog.showLanguageDialog(context, (p0) => null);
              },
              child: Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: appGreyColor.withOpacity(0.8),
                ),
                child: const Icon(
                  FontAwesomeIcons.globe,
                  color: Colors.black87,
                  size: 20,
                ),
              ),
            ),
          )
        ],
      ),
      // body: _screens[currentIndex],
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: currentIndex,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search),
      //       label: 'Discover',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.picture_in_picture_alt_outlined),
      //       label: 'Bookings',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      //   onTap: (index) => setState(() => currentIndex = index),
      // ),
    );
  }
}
