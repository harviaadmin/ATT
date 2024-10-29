import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCPWTUBVwp-ZxX5Pk1qoYO9NQ2kXtza2lU",
            authDomain: "active-travel-tours-ecdd7.firebaseapp.com",
            projectId: "active-travel-tours-ecdd7",
            storageBucket: "active-travel-tours-ecdd7.appspot.com",
            messagingSenderId: "1008918750352",
            appId: "1:1008918750352:web:dac94cb9d9942b3f91e415"));
  } else {
    await Firebase.initializeApp();
  }
}
