import 'package:event_booking_app/models/language_model/language.dart';
import 'package:flutter/material.dart';

class LanguageDialog {
  static void showLanguageDialog(
      BuildContext context, Function(String) onLanguageSelected) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select a Language'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: Language.languageList().map((Language language) {
              return ListTile(
                title: Text(language.name),
                onTap: () {
                  onLanguageSelected(language.name);
                  Navigator.of(context).pop(); // Close the dialog
                },
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
