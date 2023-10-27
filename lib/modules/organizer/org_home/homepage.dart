import 'package:event_booking_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrganizerHomepage extends StatefulWidget {
  const OrganizerHomepage({Key? key}) : super(key: key);

  @override
  State<OrganizerHomepage> createState() => _OrganizerHomepageState();
}

class _OrganizerHomepageState extends State<OrganizerHomepage> {
  @override
  Widget build(BuildContext context) {
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
                Text("Manage and Promote your Event as you Like",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: appBackgroundColor,
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
                    backgroundColor: appBackgroundColor,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 120,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
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

    return Scaffold(
      body: activeContent,
    );
  }
}
