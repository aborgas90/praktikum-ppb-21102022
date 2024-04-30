// ignore_for_file: use_super_parameters

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:praktikum_firebase/main.dart';
import 'package:praktikum_firebase/ui/login.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "HOME SCREEN",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff3D4DE0)),
            ),
            ElevatedButton(
                onPressed: () async {
                  GoogleSignIn().signOut();
                  FirebaseAuth.instance
                      .signOut()
                      .then((value) => Navigator.pushAndRemoveUntil(
                        context, MaterialPageRoute(builder: (context)=> const LoginScreen(),
                        ),
                        (route) => false));
                },
                child: const Text('Keluar')),
          ],
        ),
      ),
    );
  }
}
