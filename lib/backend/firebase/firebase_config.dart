import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDqatuOOKO3A9JOXTlYKpkD2l36Ir-adqg",
            authDomain: "tukoshop-cd55b.firebaseapp.com",
            projectId: "tukoshop-cd55b",
            storageBucket: "tukoshop-cd55b.appspot.com",
            messagingSenderId: "1037006030542",
            appId: "1:1037006030542:web:02babc4c5508b6bd03329f"));
  } else {
    await Firebase.initializeApp();
  }
}
