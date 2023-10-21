import 'package:event_booking_app/core/constants/language_constants.dart';
import 'package:flutter/material.dart';

class DiscoverTitle extends StatelessWidget {
  const DiscoverTitle({Key? key, required this.title}) : super(key: key);
  final title;

  @override
  Widget build(BuildContext context) {
    final currentLocale = Localizations.localeOf(context);
    final isSinhala = currentLocale.languageCode == SINHALA;
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        top: 20,
        bottom: 20,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: isSinhala ? 16 : 23,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
    );
  }
}
