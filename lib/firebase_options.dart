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
    apiKey: 'AIzaSyCBCovhPKHVmoYdEjRipqoH_aT8Y7scr4c',
    appId: '1:555512914638:web:5528e7fb32b216282c269f',
    messagingSenderId: '555512914638',
    projectId: 'dailyanddeed',
    authDomain: 'dailyanddeed.firebaseapp.com',
    storageBucket: 'dailyanddeed.appspot.com',
    measurementId: 'G-1VCW852420',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBzpG4CekEVJjg725gf8DzOcOXdRKk0XZ8',
    appId: '1:555512914638:android:c71310d32a4a37a92c269f',
    messagingSenderId: '555512914638',
    projectId: 'dailyanddeed',
    storageBucket: 'dailyanddeed.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCMjcwwnwhB7SAnFHnGaitZO9EH3BWqirU',
    appId: '1:555512914638:ios:5c7dbd55ff3e344a2c269f',
    messagingSenderId: '555512914638',
    projectId: 'dailyanddeed',
    storageBucket: 'dailyanddeed.appspot.com',
    iosBundleId: 'com.example.dailyAndDeeds',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCMjcwwnwhB7SAnFHnGaitZO9EH3BWqirU',
    appId: '1:555512914638:ios:5c7dbd55ff3e344a2c269f',
    messagingSenderId: '555512914638',
    projectId: 'dailyanddeed',
    storageBucket: 'dailyanddeed.appspot.com',
    iosBundleId: 'com.example.dailyAndDeeds',
  );
}
