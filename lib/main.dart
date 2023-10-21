import 'package:event_booking_app/Firebase/firebase_options.dart';
import 'package:event_booking_app/core/constants/language_constants.dart';
import 'package:event_booking_app/modules/user/user_dashboard/screen/user_dashboard.dart';
import 'package:event_booking_app/modules/welcome/screen/splash_screen.dart';
import 'package:event_booking_app/utils/strings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Stripe.publishableKey =
      'pk_test_51MxQq3J2jbmVzZDLh3EThFwIOAAYHb1TXf4z6NPjoZW0L7sgstRm350lcIY4LKSfRhol7qYC5c7dPUSU795GL98y00klNMIzht';
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();

  static void setLocale(BuildContext buildContext, Locale locale) {
    _MyAppState? state = buildContext.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(locale);
  }
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  bool isLogin = false;
  FirebaseAuth auth = FirebaseAuth.instance;
  checkIfLogin() async {
    auth.authStateChanges().listen((User? user) {
      if (user != null && mounted) {
        setState(() {
          isLogin = true;
        });
      }
    });
  }

  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) => setLocale(locale));
    super.didChangeDependencies();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: AppLocalizations.of(context)?.userHomeScreenTitle ??
            AppStrings.appName,
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: _locale,
        home: isLogin ? const UserHomeScreen() : const IntroScreen());
  }
}
