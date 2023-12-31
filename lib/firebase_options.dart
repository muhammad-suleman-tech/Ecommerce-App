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
    apiKey: 'AIzaSyCwtWGuoyI9dyFWciqDGek8Vf5B2tnrZac',
    appId: '1:909949856217:web:460a2373003638a89891c8',
    messagingSenderId: '909949856217',
    projectId: 'e-commerce-app-71990',
    authDomain: 'e-commerce-app-71990.firebaseapp.com',
    storageBucket: 'e-commerce-app-71990.appspot.com',
    measurementId: 'G-FWMFWTDRL7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC0Ks_Kg8T2GAf0fbJ6-v0xx-kWBSF-4yA',
    appId: '1:909949856217:android:bed2d7640c8260359891c8',
    messagingSenderId: '909949856217',
    projectId: 'e-commerce-app-71990',
    storageBucket: 'e-commerce-app-71990.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAPMcHPDVYjEN3Cjnm-sXkpTGF1Z25pAU0',
    appId: '1:909949856217:ios:411680d3de5d410c9891c8',
    messagingSenderId: '909949856217',
    projectId: 'e-commerce-app-71990',
    storageBucket: 'e-commerce-app-71990.appspot.com',
    iosBundleId: 'com.example.ecomm',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAPMcHPDVYjEN3Cjnm-sXkpTGF1Z25pAU0',
    appId: '1:909949856217:ios:6c34c53fc01003049891c8',
    messagingSenderId: '909949856217',
    projectId: 'e-commerce-app-71990',
    storageBucket: 'e-commerce-app-71990.appspot.com',
    iosBundleId: 'com.example.ecomm.RunnerTests',
  );
}
