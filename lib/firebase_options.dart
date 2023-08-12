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
    apiKey: 'AIzaSyD1_LpwVoAgIZgYU6AdHOkollOl_Yc8gmU',
    appId: '1:325970623729:web:afda1d3212a5c3e60f3d50',
    messagingSenderId: '325970623729',
    projectId: 'chat-app-9b59a',
    authDomain: 'chat-app-9b59a.firebaseapp.com',
    storageBucket: 'chat-app-9b59a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAHkghk0t3gSkHv5w247cf-MYk73yonz8g',
    appId: '1:325970623729:android:cf01913d2f2621bd0f3d50',
    messagingSenderId: '325970623729',
    projectId: 'chat-app-9b59a',
    storageBucket: 'chat-app-9b59a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCGJu6kZrk2yBn9k5CTcgAb7zmiTQULY3s',
    appId: '1:325970623729:ios:127f218b66598b920f3d50',
    messagingSenderId: '325970623729',
    projectId: 'chat-app-9b59a',
    storageBucket: 'chat-app-9b59a.appspot.com',
    iosClientId: '325970623729-rgpi6phb848liibt7b7h3i840iv2i0io.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatagain',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCGJu6kZrk2yBn9k5CTcgAb7zmiTQULY3s',
    appId: '1:325970623729:ios:c5f18774ad5b0e6b0f3d50',
    messagingSenderId: '325970623729',
    projectId: 'chat-app-9b59a',
    storageBucket: 'chat-app-9b59a.appspot.com',
    iosClientId: '325970623729-kb6q30jhhc0vb3c8a64cgq3mqnqinot6.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatagain.RunnerTests',
  );
}
