import 'package:event_booking_app/modules/organizer/MyEvents/my_events.dart';
import 'package:event_booking_app/modules/organizer/addEvent/add_event.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrganizerHomepage extends StatefulWidget {
  const OrganizerHomepage({Key? key}) : super(key: key);

  @override
  _OrganizerHomepageState createState() => _OrganizerHomepageState();
}

class _OrganizerHomepageState extends State<OrganizerHomepage> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    String title = "Home";
    Widget activeContent = SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 500,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://res.cloudinary.com/dnoobzfxo/image/upload/v1697783575/image_1576_kksyud.png",
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
                Text("Manage and PRomote your Event as you Like",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      color: const Color.fromARGB(255, 28, 54, 137),
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
                    backgroundColor: const Color.fromARGB(255, 28, 54, 137),
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

    if (_selectedIndex == 0) {
      activeContent = const AddEventScreen();
      title = "Add Event";
    }
    if (_selectedIndex == 2) {
      activeContent = const MyEventsScreen();
      title = "My Events";
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 24,
            color: const Color(0xFF120D26),
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: activeContent,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_chart), label: "Add Event"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_accounts),
            label: "My Events",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        unselectedFontSize: 14,
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
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
