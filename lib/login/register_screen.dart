// ignore_for_file: avoid_print, unused_local_variable

import 'package:depress_project/login/welcome_screen.dart';
import 'package:depress_project/model/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class RegisterScreen extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile();
  final Future<FirebaseApp> firebase = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: firebase,
        // ignore: missing_return
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("Error"),
              ),
              body: Center(
                child: Text("${snapshot.error}"),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.deepPurple[400],
                title: const Text("สร้างบัญชีผู้ใช้"),
              ),
              // ignore: avoid_unnecessary_containers
              body: Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "อีเมล",
                          style: TextStyle(fontSize: 20),
                        ),
                        TextFormField(
                          validator: MultiValidator([
                            RequiredValidator(errorText: "กรุณาป้อนอีเมล"),
                            EmailValidator(errorText: "รูปแบบอีเมลไม่ถูกต้อง"),
                          ]),
                          keyboardType: TextInputType.emailAddress,
                          onSaved: (String email) {
                            profile.email = email;
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "รหัสผ่าน",
                          style: TextStyle(fontSize: 20),
                        ),
                        TextFormField(
                          validator:
                              RequiredValidator(errorText: "กรุณาป้อนรหัสผ่าน"),
                          obscureText: true,
                          onSaved: (String password) {
                            profile.password = password;
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: MaterialButton(
                            child: const Text(
                              "ลงทะเบียน",
                              style: TextStyle(color: Colors.white),
                            ),
                            color: Colors.deepPurple[400],
                            minWidth: double.infinity,
                            onPressed: () async {
                              if (formKey.currentState.validate()) {
                                formKey.currentState.save();
                                try {
                                  await FirebaseAuth.instance
                                      .createUserWithEmailAndPassword(
                                    email: profile.email,
                                    password: profile.password,
                                  )
                                      .then(
                                    (value) {
                                      formKey.currentState.reset();
                                      Fluttertoast.showToast(
                                        msg: "สร้างบัญชีผู้ใช้เรียบร้อยแล้ว",
                                        gravity: ToastGravity.TOP,
                                      );
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return WelcomeScreen();
                                          },
                                        ),
                                      );
                                    },
                                  );
                                  // ignore: empty_catches
                                } on FirebaseAuthException catch (e) {
                                  // print(e.code);
                                  // print(e.message);
                                  print(e.code);
                                  String message;
                                  if (e.code == 'email-already-in-use') {
                                    message =
                                        "มีอีเมลนี้ในระบบแล้ว โปรดใช้อีเมล์อื่นแทน";
                                  } else if (e.code == "weak-password") {
                                    message =
                                        "รหัสผ่านต้องมีความยาว 6 ตัวอักษรเป็นต้นไป";
                                  } else {
                                    message = e.message;
                                  }
                                  Fluttertoast.showToast(
                                    msg: message,
                                    gravity: ToastGravity.CENTER,
                                  );
                                }
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}
