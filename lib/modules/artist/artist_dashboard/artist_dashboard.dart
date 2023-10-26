import 'package:event_booking_app/modules/artist/artist_add_post/artist_add_post.dart';
import 'package:event_booking_app/modules/artist/artist_post/artist_post.dart';
import 'package:event_booking_app/modules/artist/artist_profile/artist_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArtistHomeScreen extends StatefulWidget {
  final String uid;
  const ArtistHomeScreen({super.key, required this.uid});

  @override
  State<ArtistHomeScreen> createState() => _ArtistHomeScreenState();
}

class _ArtistHomeScreenState extends State<ArtistHomeScreen> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    String title = "Home";
    Widget content = Center(
      child: Text(widget.uid),
    );
    if (_selectedIndex == 0) {
      content = ArtistProfile();
      title = "Profile";
    }
    if (_selectedIndex == 2) {
      content = const ArtistAddPost();
      title = "Add Posts";
    }
    if (_selectedIndex == 3) {
      content = const ArtistPost();
      title = "My Posts";
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // Set the background color to black
        title: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: content,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add_rounded),
            label: "My Posts",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "My Posts",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        unselectedFontSize: 14,
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.grey[600],
        ),
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey[600],
        selectedFontSize: 16,
        selectedLabelStyle: GoogleFonts.poppins(
          color: Colors.blue[800],
          fontWeight: FontWeight.w500,
        ),
        selectedItemColor: Colors.blue[800],
      ),
    );
  }
}
