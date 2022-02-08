// ignore_for_file: prefer_const_constructors, must_be_immutable, override_on_non_overriding_member, use_key_in_widget_constructors

// import 'package:depress_project/login/welcome_screen.dart';
// import 'package:firebase_auth/firebase_auth.dart';

import 'package:depress_project/pages/depress_test.dart';
import 'package:depress_project/pages/depression_data.dart';
import 'package:depress_project/pages/history_test.dart';
import 'package:depress_project/pages/profile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final screens = [
    DepressTestPage(),
    DepressDataPage(),
    HistoryTestPage(),
    ProfilePage(),
  ];
  // อย่าลืมเปิดอันนี้
  // final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.deepPurple[400],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          iconSize: 30,
          selectedFontSize: 15,
          unselectedFontSize: 12,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.description,
              ),
              label: 'Test',
              // backgroundColor: Colors.deepPurple[400],
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
              ),
              label: 'History',
              // backgroundColor: Colors.red[600],
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_hospital,
              ),
              label: 'Healing',
              // backgroundColor: Colors.green[600],
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_rounded,
              ),
              label: 'Account',
              // backgroundColor: Colors.amber[900],
            ),
          ]),
    );
  }
}


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
            // )