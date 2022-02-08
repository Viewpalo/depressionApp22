// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

// import 'package:depress_project/login/welcome_screen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  // final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        title: const Text('Profile'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 30, 10, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Hello Profile"),
              // Text(
              //   auth.currentUser.email,
              //   style: const TextStyle(fontSize: 25),
              // ),
              // MaterialButton(
              //   child: const Text(
              //     "ออกจากระบบ",
              //     style: TextStyle(color: Colors.white),
              //   ),
              //   color: Colors.red[800],
              //   onPressed: () {
              //     auth.signOut().then((value) {
              //       Navigator.pushReplacement(context,
              //           MaterialPageRoute(builder: (context) {
              //         return WelcomeScreen();
              //       }));
              //     });
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
