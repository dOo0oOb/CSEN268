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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDIOtr1zGUdPWnFzNyKHcxdo56V1jllpLg',
    appId: '1:668632222514:web:00cae13c4700e5d33c252b',
    messagingSenderId: '668632222514',
    projectId: 'csen268-f24-g1',
    authDomain: 'csen268-f24-g1.firebaseapp.com',
    storageBucket: 'csen268-f24-g1.firebasestorage.app',
    measurementId: 'G-7W0QSWS1P5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCnXDiU1iC33aUXMnhr_mR4NmGhwd5WV9s',
    appId: '1:668632222514:android:e080d025aca53d213c252b',
    messagingSenderId: '668632222514',
    projectId: 'csen268-f24-g1',
    storageBucket: 'csen268-f24-g1.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBUoujUlskCfsmAf1-7FbAutSwfuflQVyA',
    appId: '1:668632222514:ios:71de1d245dc637563c252b',
    messagingSenderId: '668632222514',
    projectId: 'csen268-f24-g1',
    storageBucket: 'csen268-f24-g1.firebasestorage.app',
    iosBundleId: 'com.csen268.f24.g1',
  );
}
