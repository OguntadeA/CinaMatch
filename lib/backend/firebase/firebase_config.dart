import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCp7mWH4zFLv8FO6I_aJld-7U33kH1s8po",
            authDomain: "cinamatch2-0.firebaseapp.com",
            projectId: "cinamatch2-0",
            storageBucket: "cinamatch2-0.firebasestorage.app",
            messagingSenderId: "799715338717",
            appId: "1:799715338717:web:08fe6a72a7c03916956e34",
            measurementId: "G-YZQ9R7WT22"));
  } else {
    await Firebase.initializeApp();
  }
}
