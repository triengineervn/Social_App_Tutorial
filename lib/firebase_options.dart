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
    apiKey: 'AIzaSyCHR6QnxrR7f2D810ko-DLc0iK7ePwVaGY',
    appId: '1:519584830945:web:d92e9c44f1268ace172ea0',
    messagingSenderId: '519584830945',
    projectId: 'social-app-flutter-27268',
    authDomain: 'social-app-flutter-27268.firebaseapp.com',
    storageBucket: 'social-app-flutter-27268.appspot.com',
    measurementId: 'G-PE88GB0K6S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDBS_8HnLym4uYjUcgMKZXv1jOe9O1ZY8I',
    appId: '1:519584830945:android:2c7267666375c7e1172ea0',
    messagingSenderId: '519584830945',
    projectId: 'social-app-flutter-27268',
    storageBucket: 'social-app-flutter-27268.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDn4qw6BLJf_azczpJGZrsCtT_Ngonpq2Q',
    appId: '1:519584830945:ios:f1128eb8846a4f22172ea0',
    messagingSenderId: '519584830945',
    projectId: 'social-app-flutter-27268',
    storageBucket: 'social-app-flutter-27268.appspot.com',
    iosClientId: '519584830945-tu9cp2isk8no2pqpnqrkeu3g6f2djim8.apps.googleusercontent.com',
    iosBundleId: 'com.example.socialAppTutorial',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDn4qw6BLJf_azczpJGZrsCtT_Ngonpq2Q',
    appId: '1:519584830945:ios:f7d4cd3a621d1896172ea0',
    messagingSenderId: '519584830945',
    projectId: 'social-app-flutter-27268',
    storageBucket: 'social-app-flutter-27268.appspot.com',
    iosClientId: '519584830945-po1jl87v6mv0l2jpj452o657shb3n0lp.apps.googleusercontent.com',
    iosBundleId: 'com.example.socialAppTutorial.RunnerTests',
  );
}