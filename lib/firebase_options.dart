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
    apiKey: 'AIzaSyC3gWq6XF3bhXcgHpuyqLRltK-zbU_gmJ8',
    appId: '1:693855062171:web:d806363d968ff218095e3e',
    messagingSenderId: '693855062171',
    projectId: 'alpha-real-estate-e46c6',
    authDomain: 'alpha-real-estate-e46c6.firebaseapp.com',
    storageBucket: 'alpha-real-estate-e46c6.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC4CZ6cqymD2FHMQEADgrlidP7_7-KZkxU',
    appId: '1:693855062171:android:7ba64e8da8f8046a095e3e',
    messagingSenderId: '693855062171',
    projectId: 'alpha-real-estate-e46c6',
    storageBucket: 'alpha-real-estate-e46c6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAkQKjerRQY3a78c2JQ71TlZvZFMoAPJVQ',
    appId: '1:693855062171:ios:b731e7da98255bb6095e3e',
    messagingSenderId: '693855062171',
    projectId: 'alpha-real-estate-e46c6',
    storageBucket: 'alpha-real-estate-e46c6.appspot.com',
    iosClientId: '693855062171-mqpi9uajrp2i1ould5697jopmrc4nvgd.apps.googleusercontent.com',
    iosBundleId: 'com.infinity.alphaEstates',
  );
}
