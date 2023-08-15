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
    apiKey: 'AIzaSyA7ZfX1XnvphxPKwDFfHV8gFiQWYRCw2oc',
    appId: '1:332975599337:web:223686f64e9c932e510a78',
    messagingSenderId: '332975599337',
    projectId: 'surge-2023-d97f9',
    authDomain: 'surge-2023-d97f9.firebaseapp.com',
    storageBucket: 'surge-2023-d97f9.appspot.com',
    measurementId: 'G-SH2CW5JMNR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDALAm-4H9i2ildWsMQZq1UR4qHRqxwenY',
    appId: '1:332975599337:android:7bed4c93955365d5510a78',
    messagingSenderId: '332975599337',
    projectId: 'surge-2023-d97f9',
    storageBucket: 'surge-2023-d97f9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB2544U8rJJsq05WklT40SOyN4Wl8Ghj-E',
    appId: '1:332975599337:ios:029aa91bb783f7ae510a78',
    messagingSenderId: '332975599337',
    projectId: 'surge-2023-d97f9',
    storageBucket: 'surge-2023-d97f9.appspot.com',
    iosClientId: '332975599337-pl5dvflqaaegbbqjjgm35d6an82s4hmu.apps.googleusercontent.com',
    iosBundleId: 'com.example.surge2023App',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB2544U8rJJsq05WklT40SOyN4Wl8Ghj-E',
    appId: '1:332975599337:ios:3956d0ba9be67540510a78',
    messagingSenderId: '332975599337',
    projectId: 'surge-2023-d97f9',
    storageBucket: 'surge-2023-d97f9.appspot.com',
    iosClientId: '332975599337-3gg8rjfh4g6gn02d11so24gpp2gftdgf.apps.googleusercontent.com',
    iosBundleId: 'com.example.surge2023App.RunnerTests',
  );
}