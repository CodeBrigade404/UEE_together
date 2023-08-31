// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCnB89d4hfd8AFYXawo0MTRICoSIPS2UV4',
    appId: '1:376548133689:web:47a0f8d6dcc4a25d6c36e8',
    messagingSenderId: '376548133689',
    projectId: 'eventz-3a488',
    authDomain: 'eventz-3a488.firebaseapp.com',
    storageBucket: 'eventz-3a488.appspot.com',
    measurementId: 'G-GKHV01VZB6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBsAB0iE2RtfQAJrodMYPrgv4ZYN5PJUHw',
    appId: '1:376548133689:android:18260f696b014abb6c36e8',
    messagingSenderId: '376548133689',
    projectId: 'eventz-3a488',
    storageBucket: 'eventz-3a488.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDEgbGe4ZSKM52xrtXMjZWx92kCF_5wSls',
    appId: '1:376548133689:ios:f696e204872569736c36e8',
    messagingSenderId: '376548133689',
    projectId: 'eventz-3a488',
    storageBucket: 'eventz-3a488.appspot.com',
    androidClientId: '376548133689-dq4ifrf4ij4kijac7p83gfpflk25vccc.apps.googleusercontent.com',
    iosClientId: '376548133689-ielodr25kv5a94q5mb5ua29cvtd6e453.apps.googleusercontent.com',
    iosBundleId: 'com.example.eventBookingApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDEgbGe4ZSKM52xrtXMjZWx92kCF_5wSls',
    appId: '1:376548133689:ios:f696e204872569736c36e8',
    messagingSenderId: '376548133689',
    projectId: 'eventz-3a488',
    storageBucket: 'eventz-3a488.appspot.com',
    androidClientId: '376548133689-dq4ifrf4ij4kijac7p83gfpflk25vccc.apps.googleusercontent.com',
    iosClientId: '376548133689-ielodr25kv5a94q5mb5ua29cvtd6e453.apps.googleusercontent.com',
    iosBundleId: 'com.example.eventBookingApp',
  );
}
