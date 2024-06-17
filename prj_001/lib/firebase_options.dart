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
    apiKey: 'AIzaSyAEET3gKbhU3lMzylfPUgk3TqO74A5pum8',
    appId: '1:483830171830:web:e79f09b8c3d90d0aea7e17',
    messagingSenderId: '483830171830',
    projectId: 'teste-firebase-tarde-alberto-0',
    authDomain: 'teste-firebase-tarde-alberto-0.firebaseapp.com',
    storageBucket: 'teste-firebase-tarde-alberto-0.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBZ7fO9VAk1K5penqznKi040f_mkJFAcJ4',
    appId: '1:483830171830:android:dd14d188532aaf3cea7e17',
    messagingSenderId: '483830171830',
    projectId: 'teste-firebase-tarde-alberto-0',
    storageBucket: 'teste-firebase-tarde-alberto-0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDK8jcvpqEktnn9ZQkhGQWWp43X0roonY4',
    appId: '1:483830171830:ios:52c9eaf6fd50569bea7e17',
    messagingSenderId: '483830171830',
    projectId: 'teste-firebase-tarde-alberto-0',
    storageBucket: 'teste-firebase-tarde-alberto-0.appspot.com',
    iosBundleId: 'com.example.prj001',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDK8jcvpqEktnn9ZQkhGQWWp43X0roonY4',
    appId: '1:483830171830:ios:52c9eaf6fd50569bea7e17',
    messagingSenderId: '483830171830',
    projectId: 'teste-firebase-tarde-alberto-0',
    storageBucket: 'teste-firebase-tarde-alberto-0.appspot.com',
    iosBundleId: 'com.example.prj001',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAEET3gKbhU3lMzylfPUgk3TqO74A5pum8',
    appId: '1:483830171830:web:b3f00efe4d6f41d5ea7e17',
    messagingSenderId: '483830171830',
    projectId: 'teste-firebase-tarde-alberto-0',
    authDomain: 'teste-firebase-tarde-alberto-0.firebaseapp.com',
    storageBucket: 'teste-firebase-tarde-alberto-0.appspot.com',
  );
}
