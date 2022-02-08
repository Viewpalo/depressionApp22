// ignore_for_file: use_key_in_widget_constructors
// import 'package:depress_project/depress_q/2q.dart';
import 'package:depress_project/depress_q/9q.dart';
import 'package:flutter/material.dart';

class DepressTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        title: const Text('Depression Test'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 30, 15, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'แบบประเมินโรคซึมเศร้า',
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(
                height: 15,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Q9QTest();
                  }));
                },
                child: const Text(
                  "เริ่มทำแบบประเมิน",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.deepPurple[400],
                minWidth: 200,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'หมายเหตุ',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'แบบประเมินนี้ เป็นการประเมินระดับภาวะซึมเศร้าในขั้นเบื้องต้น ด้วยการแปรผลจากการทำแบบประเมิน ส่วนการวินิจฉัยนั้นจำเป็นต้องพบแพทย์เพื่อทำการซักประวัติ ตรวจร่างกาย รวมถึงตรวจเพิ่มเติม เพื่อยืนยันการวินิจฉัยที่แน่นอน เพื่อแยกโรคหรือภาวะอื่น ๆ เนื่องจากภาวะซึมเศร้าเป็นจากสาเหตุต่าง ๆ ได้มากมาย เช่นโรคทางจิตเวชอื่นที่มีอาการซึมเศร้าร่วมด้วย โรคทางร่างกายเช่นไทรอยด์ โรคแพ้ภูมิตัวเอง หรือจากยาหรือสารต่าง ๆ',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  'ผลการประเมินและคำแนะนำที่ได้รับจากแอพพลิเคชั่นนี้จึงไม่สามารถใช้แทนการตัดสินใจแพทย์ได้ การตรวจรักษาเพิ่มเติมหรือการให้ยารักษาขึ้นอยู่กับดุลยพินิจของแพทย์และการปรึกษาระหว่างแพทย์กับตัวผู้ประเมิน'),
            ],
          ),
        ),
      ),
    );
  }
}
