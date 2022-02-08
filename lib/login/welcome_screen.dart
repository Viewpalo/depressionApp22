import 'package:depress_project/login/login_screen.dart';
import 'package:depress_project/login/register_screen.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 30, 10, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "ยินดีต้อนรับสู่ระบบแบบประเมินโรคซึมเศร้า",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/images/depression.jpg",
                width: 300,
              ),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                },
                child: const Text(
                  "เข้าสู่ระบบ",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.deepPurple[400],
                minWidth: 200,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return RegisterScreen();
                  }));
                },
                child: const Text(
                  "สร้างบัญชี",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.deepPurple[400],
                minWidth: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
