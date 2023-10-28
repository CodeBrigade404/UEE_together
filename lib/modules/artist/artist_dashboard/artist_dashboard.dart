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
  // int _selectedIndex = 1;

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    String title = "Home";
    Widget content = SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 450,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://res.cloudinary.com/dnoobzfxo/image/upload/v1698324695/dj-pictures-e9mzrm1wwy8nryju_xh24k7.jpg",
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text("Increase your fan base and carreer growth",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      color: const Color(0xFF3D56F0),
                      fontWeight: FontWeight.w700,
                    )),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Easy to use and easy to manage promotion start from \$20 to \$100",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3D56F0),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
    // if (_selectedIndex == 0) {
    //   content = ArtistProfile(uid: widget.uid);
    //   title = "Profile";
    // }

    // if (_selectedIndex == 2) {
    //   content = ArtistPost(uid: widget.uid);
    //   title = "My Posts";
    // }
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
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.person_2), label: "Profile"),
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.post_add),
      //       label: "Posts",
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   onTap: _onItemTapped,
      //   unselectedFontSize: 14,
      //   unselectedLabelStyle: TextStyle(
      //     fontWeight: FontWeight.w600,
      //     color: Colors.grey[600],
      //   ),
      //   showUnselectedLabels: true,
      //   unselectedItemColor: Colors.grey[600],
      //   selectedFontSize: 16,
      //   selectedLabelStyle: GoogleFonts.poppins(
      //     color: Colors.blue[800],
      //     fontWeight: FontWeight.w500,
      //   ),
      //   selectedItemColor: Colors.blue[800],
      // ),
    );
  }
}
