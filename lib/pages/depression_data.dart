// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class DepressDataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        title: const Text('Depression Data'),
      ),
      body: const Center(
        child: Text(
          'Depression Data',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
