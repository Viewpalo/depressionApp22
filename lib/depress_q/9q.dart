// ignore_for_file: use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';

class Q9QTest extends StatefulWidget {
  @override
  _Q9QTestState createState() => _Q9QTestState();
}

class _Q9QTestState extends State<Q9QTest> {
  String selected9Q1;
  String selected9Q2;
  String selected9Q3;
  String selected9Q4;
  String selected9Q5;
  String selected9Q6;
  String selected9Q7;
  String selected9Q8;
  String selected9Q9;

  void _onRadioButtonChange9Q1(String value) {
    setState(() {
      selected9Q1 = value;
    });
  }

  void _onRadioButtonChange9Q2(String value) {
    setState(() {
      selected9Q2 = value;
    });
  }

  void _onRadioButtonChange9Q3(String value) {
    setState(() {
      selected9Q3 = value;
    });
  }

  void _onRadioButtonChange9Q4(String value) {
    setState(() {
      selected9Q4 = value;
    });
  }

  void _onRadioButtonChange9Q5(String value) {
    setState(() {
      selected9Q5 = value;
    });
  }

  void _onRadioButtonChange9Q6(String value) {
    setState(() {
      selected9Q6 = value;
    });
  }

  void _onRadioButtonChange9Q7(String value) {
    setState(() {
      selected9Q7 = value;
    });
  }

  void _onRadioButtonChange9Q8(String value) {
    setState(() {
      selected9Q8 = value;
    });
  }

  void _onRadioButtonChange9Q9(String value) {
    setState(() {
      selected9Q9 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: const Text(
          'แบบประเมินโรคซึมเศร้า 9 คำถาม (9Q)',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple[400],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 30, 10, 20),
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'แบบประเมินโรคซึมเศร้า 9 คำถาม (9Q)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(
                  'ในช่วง 2 สัปดาห์ที่ผ่านมารวมถึงวันนี้ ท่านมีอาการเหล่านี้ บ่อยแค่ไหน'),
              Row(
                children: const [
                  Text(
                    'หมายเหตุ',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  Text(' '),
                  Text(
                      '0 = ไม่มีเลย, 1 = เป็นบางวัน, 2 = เป็นบ่อย, 3 = เป็นทุกวัน'),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              //Q1
              const Text('1. เบื่อ ไม่สนใจอยากทำอะไร'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('0'),
                  Radio(
                      value: '0',
                      groupValue: selected9Q1,
                      onChanged: (value) => _onRadioButtonChange9Q1(value)),
                  const Text('1'),
                  Radio(
                      value: '1',
                      groupValue: selected9Q1,
                      onChanged: (value) => _onRadioButtonChange9Q1(value)),
                  const Text('2'),
                  Radio(
                      value: '2',
                      groupValue: selected9Q1,
                      onChanged: (value) => _onRadioButtonChange9Q1(value)),
                  const Text('3'),
                  Radio(
                      value: '3',
                      groupValue: selected9Q1,
                      onChanged: (value) => _onRadioButtonChange9Q1(value)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              //Q2
              const Text('2. ไม่สบายใจ ซึมเศร้า ท้อแท้'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('0'),
                  Radio(
                      value: '0',
                      groupValue: selected9Q2,
                      onChanged: (value) => _onRadioButtonChange9Q2(value)),
                  const Text('1'),
                  Radio(
                      value: '1',
                      groupValue: selected9Q2,
                      onChanged: (value) => _onRadioButtonChange9Q2(value)),
                  const Text('2'),
                  Radio(
                      value: '2',
                      groupValue: selected9Q2,
                      onChanged: (value) => _onRadioButtonChange9Q2(value)),
                  const Text('3'),
                  Radio(
                      value: '3',
                      groupValue: selected9Q2,
                      onChanged: (value) => _onRadioButtonChange9Q2(value)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              //Q3
              const Text('3. หลับยากหรือหลับๆตื่นๆ หรือหลับมากไป'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('0'),
                  Radio(
                      value: '0',
                      groupValue: selected9Q3,
                      onChanged: (value) => _onRadioButtonChange9Q3(value)),
                  const Text('1'),
                  Radio(
                      value: '1',
                      groupValue: selected9Q3,
                      onChanged: (value) => _onRadioButtonChange9Q3(value)),
                  const Text('2'),
                  Radio(
                      value: '2',
                      groupValue: selected9Q3,
                      onChanged: (value) => _onRadioButtonChange9Q3(value)),
                  const Text('3'),
                  Radio(
                      value: '3',
                      groupValue: selected9Q3,
                      onChanged: (value) => _onRadioButtonChange9Q3(value)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              //Q4
              const Text('4. เหนื่อยง่ายหรือไม่ค่อยมีแรง'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('0'),
                  Radio(
                      value: '0',
                      groupValue: selected9Q4,
                      onChanged: (value) => _onRadioButtonChange9Q4(value)),
                  const Text('1'),
                  Radio(
                      value: '1',
                      groupValue: selected9Q4,
                      onChanged: (value) => _onRadioButtonChange9Q4(value)),
                  const Text('2'),
                  Radio(
                      value: '2',
                      groupValue: selected9Q4,
                      onChanged: (value) => _onRadioButtonChange9Q4(value)),
                  const Text('3'),
                  Radio(
                      value: '3',
                      groupValue: selected9Q4,
                      onChanged: (value) => _onRadioButtonChange9Q4(value)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              //Q5
              const Text('5. เบื่ออาหารหรือกินมากไป'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('0'),
                  Radio(
                      value: '0',
                      groupValue: selected9Q5,
                      onChanged: (value) => _onRadioButtonChange9Q5(value)),
                  const Text('1'),
                  Radio(
                      value: '1',
                      groupValue: selected9Q5,
                      onChanged: (value) => _onRadioButtonChange9Q5(value)),
                  const Text('2'),
                  Radio(
                      value: '2',
                      groupValue: selected9Q5,
                      onChanged: (value) => _onRadioButtonChange9Q5(value)),
                  const Text('3'),
                  Radio(
                      value: '3',
                      groupValue: selected9Q5,
                      onChanged: (value) => _onRadioButtonChange9Q5(value)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              //Q6
              const Text(
                  '6. รู้สึกไม่ดีกับตัวเอง คิดว่าตัวเองล้มเหลวหรือครอบครัวผิดหวัง'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('0'),
                  Radio(
                      value: '0',
                      groupValue: selected9Q6,
                      onChanged: (value) => _onRadioButtonChange9Q6(value)),
                  const Text('1'),
                  Radio(
                      value: '1',
                      groupValue: selected9Q6,
                      onChanged: (value) => _onRadioButtonChange9Q6(value)),
                  const Text('2'),
                  Radio(
                      value: '2',
                      groupValue: selected9Q6,
                      onChanged: (value) => _onRadioButtonChange9Q6(value)),
                  const Text('3'),
                  Radio(
                      value: '3',
                      groupValue: selected9Q5,
                      onChanged: (value) => _onRadioButtonChange9Q6(value)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              //Q7
              const Text(
                  '7. สมาธิไม่ดี เวลาทำอะไรเช่น ดูโทรศัพท์ ฟังวิทยุ หรือทำงานที่ต้องใช้ความตั้งใจ'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('0'),
                  Radio(
                      value: '0',
                      groupValue: selected9Q7,
                      onChanged: (value) => _onRadioButtonChange9Q7(value)),
                  const Text('1'),
                  Radio(
                      value: '1',
                      groupValue: selected9Q7,
                      onChanged: (value) => _onRadioButtonChange9Q7(value)),
                  const Text('2'),
                  Radio(
                      value: '2',
                      groupValue: selected9Q7,
                      onChanged: (value) => _onRadioButtonChange9Q7(value)),
                  const Text('3'),
                  Radio(
                      value: '3',
                      groupValue: selected9Q7,
                      onChanged: (value) => _onRadioButtonChange9Q7(value)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              //Q8
              const Text(
                  '8. พูดช้า ทำอะไรช้าลงจนคนอื่นสังเกตุเห็นได้ หรือกระสับกระส่ายไม่สามารถอยู่นิ่งได้เหมือนที่เคยเป็น'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('0'),
                  Radio(
                      value: '0',
                      groupValue: selected9Q8,
                      onChanged: (value) => _onRadioButtonChange9Q8(value)),
                  const Text('1'),
                  Radio(
                      value: '1',
                      groupValue: selected9Q8,
                      onChanged: (value) => _onRadioButtonChange9Q8(value)),
                  const Text('2'),
                  Radio(
                      value: '2',
                      groupValue: selected9Q8,
                      onChanged: (value) => _onRadioButtonChange9Q8(value)),
                  const Text('3'),
                  Radio(
                      value: '3',
                      groupValue: selected9Q8,
                      onChanged: (value) => _onRadioButtonChange9Q8(value)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              //Q9
              const Text('9. คิดทำร้ายตนเอง หรือถ้าตายไปคงจะดี'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('0'),
                  Radio(
                      value: '0',
                      groupValue: selected9Q9,
                      onChanged: (value) => _onRadioButtonChange9Q9(value)),
                  const Text('1'),
                  Radio(
                      value: '1',
                      groupValue: selected9Q9,
                      onChanged: (value) => _onRadioButtonChange9Q9(value)),
                  const Text('2'),
                  Radio(
                      value: '2',
                      groupValue: selected9Q9,
                      onChanged: (value) => _onRadioButtonChange9Q9(value)),
                  const Text('3'),
                  Radio(
                      value: '3',
                      groupValue: selected9Q9,
                      onChanged: (value) => _onRadioButtonChange9Q9(value)),
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
