import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA056xyTthHnMuHi10xoiRfz1gn_3Pos5c",
            authDomain: "minhas-tarefas-3bf8f.firebaseapp.com",
            projectId: "minhas-tarefas-3bf8f",
            storageBucket: "minhas-tarefas-3bf8f.firebasestorage.app",
            messagingSenderId: "401365503190",
            appId: "1:401365503190:web:def6e3bc128101f11ecd77",
            measurementId: "G-NTGZ8N5SRE"));
  } else {
    await Firebase.initializeApp();
  }
}
