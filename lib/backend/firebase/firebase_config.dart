import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyANYK7gojy6EiART2SV6E4rFdBTGi-OhcQ",
            authDomain: "cinamatchprodenv.firebaseapp.com",
            projectId: "cinamatchprodenv",
            storageBucket: "cinamatchprodenv.firebasestorage.app",
            messagingSenderId: "271438424",
            appId: "1:271438424:web:e4257e80b8d4827a4ff02d",
            measurementId: "G-T75F0D5DSF"));
  } else {
    await Firebase.initializeApp();
  }
}
