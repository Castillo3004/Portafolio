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
    apiKey: 'AIzaSyA6ooRIhdZCkSKzKWgRjeG9Q7bQAr11t6Y',
    appId: '1:373720389098:web:2cb28dca61f28d5d3ece93',
    messagingSenderId: '373720389098',
    projectId: 'puente-arcoiris-41bbc',
    authDomain: 'puente-arcoiris-41bbc.firebaseapp.com',
    storageBucket: 'puente-arcoiris-41bbc.appspot.com',
    measurementId: 'G-91CHQE8BEY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA1CtHBGwqF69Wd7DkaKi1ewNklotZAx7Q',
    appId: '1:373720389098:android:524f6b9f30ec8b6a3ece93',
    messagingSenderId: '373720389098',
    projectId: 'puente-arcoiris-41bbc',
    storageBucket: 'puente-arcoiris-41bbc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAzTYZzkI5g_pJcRAvhkY5pPT7ZPmn-yZU',
    appId: '1:373720389098:ios:efc4f032da92951f3ece93',
    messagingSenderId: '373720389098',
    projectId: 'puente-arcoiris-41bbc',
    storageBucket: 'puente-arcoiris-41bbc.appspot.com',
    iosClientId: '373720389098-p8k0k0k3tknejdgdv87jmsumokag5av9.apps.googleusercontent.com',
    iosBundleId: 'com.example.puenteArcoiris',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAzTYZzkI5g_pJcRAvhkY5pPT7ZPmn-yZU',
    appId: '1:373720389098:ios:efc4f032da92951f3ece93',
    messagingSenderId: '373720389098',
    projectId: 'puente-arcoiris-41bbc',
    storageBucket: 'puente-arcoiris-41bbc.appspot.com',
    iosClientId: '373720389098-p8k0k0k3tknejdgdv87jmsumokag5av9.apps.googleusercontent.com',
    iosBundleId: 'com.example.puenteArcoiris',
  );
}
