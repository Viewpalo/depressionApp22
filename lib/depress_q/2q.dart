// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Q2QTest extends StatefulWidget {
  @override
  _Q2QTestState createState() => _Q2QTestState();
}

class _Q2QTestState extends State<Q2QTest> {
  String selected2Q1;
  String selected2Q2;

  void _onRadioButtonChange2Q1(String value) {
    setState(() {
      selected2Q1 = value;
    });
  }

  void _onRadioButtonChange2Q2(String value) {
    setState(() {
      selected2Q2 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: const Text(
          'แบบคัดกรองโรคซึมเศร้า 2 คำถาม (2Q)',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple[400],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 30, 10, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'แบบคัดกรองโรคซึมเศร้า 2 คำถาม (2Q)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                  '1. ใน 2 สัปดาห์ที่ผ่านมา รวมถึงวันนี้ ท่านรู้สึก หดหู่ เศร้า หรือท้อแท้สิ้นหวัง หรือไม่'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('มี'),
                  Radio(
                      value: '1',
                      groupValue: selected2Q1,
                      onChanged: (value) => _onRadioButtonChange2Q1(value)),
                  const Text('ไม่มี'),
                  Radio(
                      value: '0',
                      groupValue: selected2Q1,
                      onChanged: (value) => _onRadioButtonChange2Q1(value)),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                  '2. ใน 2 สัปดาห์ที่ผ่านมา รวมถึงวันนี้ ท่านรู้สึก เบื่อ ทำอะไรก็ไม่เพลิดเพลิน หรือไม่'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('มี'),
                  Radio(
                      value: '1',
                      groupValue: selected2Q2,
                      onChanged: (value) => _onRadioButtonChange2Q2(value)),
                  const Text('ไม่มี'),
                  Radio(
                      value: '0',
                      groupValue: selected2Q2,
                      onChanged: (value) => _onRadioButtonChange2Q2(value)),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    'แปรผล',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.deepPurple[400])
            ],
          ),
        ),
      ),
    );
  }
}
