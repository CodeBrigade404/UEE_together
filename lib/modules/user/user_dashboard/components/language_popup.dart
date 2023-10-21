import 'package:event_booking_app/main.dart';
import 'package:event_booking_app/models/language_model.dart';
import 'package:event_booking_app/core/constants/language_constants.dart';
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
                onTap: () async {
                  final localContext = context;
                  setLocale(language.languageCode).then((Locale local) {
                    MyApp.setLocale(localContext, local);
                    onLanguageSelected(language.name);
                    Navigator.of(localContext).pop();
                  });
                },
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
