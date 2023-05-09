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
    apiKey: 'AIzaSyBQAJ1je7F_Eu6snDfuuWkUEvTM9ynmL4E',
    appId: '1:440593481295:web:3037312622d4461835b43a',
    messagingSenderId: '440593481295',
    projectId: 'insta-sscrip',
    authDomain: 'insta-sscrip.firebaseapp.com',
    storageBucket: 'insta-sscrip.appspot.com',
    measurementId: 'G-H6HCVC10VQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBAKH_rZviqFl4Dhkrq8SUBtTXkrmAZZ00',
    appId: '1:440593481295:android:27d0b88e61fc751f35b43a',
    messagingSenderId: '440593481295',
    projectId: 'insta-sscrip',
    storageBucket: 'insta-sscrip.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCbP_F7s4u28tQ5gbYoo13N7BfHOkktp6U',
    appId: '1:440593481295:ios:4193a6136f84c35235b43a',
    messagingSenderId: '440593481295',
    projectId: 'insta-sscrip',
    storageBucket: 'insta-sscrip.appspot.com',
    iosClientId: '440593481295-hb5367916qpjtprllqv0n48ag3gca9k4.apps.googleusercontent.com',
    iosBundleId: 'com.example.instaSscrip',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCbP_F7s4u28tQ5gbYoo13N7BfHOkktp6U',
    appId: '1:440593481295:ios:4193a6136f84c35235b43a',
    messagingSenderId: '440593481295',
    projectId: 'insta-sscrip',
    storageBucket: 'insta-sscrip.appspot.com',
    iosClientId: '440593481295-hb5367916qpjtprllqv0n48ag3gca9k4.apps.googleusercontent.com',
    iosBundleId: 'com.example.instaSscrip',
  );
}
