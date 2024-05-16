// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBkevInR_F6wsWS6I4HTf0nCIy8W4gc1hM',
    appId: '1:852830479138:web:8a224ba5290456bcc8fb7b',
    messagingSenderId: '852830479138',
    projectId: 'journal-1b395',
    authDomain: 'journal-1b395.firebaseapp.com',
    storageBucket: 'journal-1b395.appspot.com',
    measurementId: 'G-01H1CCRCPC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCP7i5y1X7y_BxthgnMVvkhJApldskMayA',
    appId: '1:852830479138:android:5084c81b8f724e2bc8fb7b',
    messagingSenderId: '852830479138',
    projectId: 'journal-1b395',
    storageBucket: 'journal-1b395.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDRb-AcpJkRmMIY7qDHe4_shVRZdgAX0ng',
    appId: '1:852830479138:ios:ccea3783775af575c8fb7b',
    messagingSenderId: '852830479138',
    projectId: 'journal-1b395',
    storageBucket: 'journal-1b395.appspot.com',
    iosBundleId: 'com.example.journalApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDRb-AcpJkRmMIY7qDHe4_shVRZdgAX0ng',
    appId: '1:852830479138:ios:ccea3783775af575c8fb7b',
    messagingSenderId: '852830479138',
    projectId: 'journal-1b395',
    storageBucket: 'journal-1b395.appspot.com',
    iosBundleId: 'com.example.journalApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBkevInR_F6wsWS6I4HTf0nCIy8W4gc1hM',
    appId: '1:852830479138:web:21733154c7daa138c8fb7b',
    messagingSenderId: '852830479138',
    projectId: 'journal-1b395',
    authDomain: 'journal-1b395.firebaseapp.com',
    storageBucket: 'journal-1b395.appspot.com',
    measurementId: 'G-ZR8407QSV3',
  );
}
