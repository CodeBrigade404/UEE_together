// ignore_for_file: use_build_context_synchronously

import 'package:event_booking_app/Firebase/firebase_authentication.dart';
import 'package:event_booking_app/modules/auth/sign_in.dart';
import 'package:event_booking_app/modules/user/user_notification/notifications.dart';
import 'package:event_booking_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final bool showSearch;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.showBackButton = false,
    this.showSearch = false,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          title.toUpperCase(),
          style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: appDarkGray,
          ),
        ),
        leading: showBackButton
            ? IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: appDarkGray,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            : null,
        actions: <Widget>[
          if (showSearch) // Conditionally display search icon
            IconButton(
              icon: const Icon(
                Icons.search,
                color: appDarkGray,
              ),
              onPressed: () {
                // Handle the search action here.
              },
            ),
          PopupMenuButton<String>(
            icon: const Icon(
              Icons.more_vert, // Change the icon to the three-dot icon
              color: appDarkGray, // Set the icon color to dark gray
            ),
            color:
                Colors.white, // Set the background color of the menu to white
            onSelected: (value) async {
              if (value == 'notification') {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const NotificationsScreen(),
                ));
              } else if (value == 'logout') {
                await logout();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ));
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'notification',
                child: ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text('Notifications'),
                ),
              ),
              const PopupMenuItem<String>(
                value: 'logout',
                child: ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Logout'),
                ),
              ),
            ],
          ),
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
      ),
    );
  }
}
