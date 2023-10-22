// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:event_booking_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscoverTitle extends StatelessWidget {
  const DiscoverTitle({Key? key, required this.title}) : super(key: key);
  final title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        top: 20,
        bottom: 20,
      ),
      child: Text(
        title,
        textAlign: TextAlign.left,
         style: GoogleFonts.poppins(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: appDarkGray,
        ),
      ),
    );
  }
}
