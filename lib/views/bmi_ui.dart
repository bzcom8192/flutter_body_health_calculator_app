import 'package:flutter/material.dart';

class BmiUi extends StatefulWidget {
  const BmiUi({super.key});

  @override
  State<BmiUi> createState() => _BmiUiState();
}

class _BmiUiState extends State<BmiUi> {
  TextEditingController wController = TextEditingController();
  TextEditingController hController = TextEditingController();

  String bmi = '0.00';
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 40,
            left: 30,
            right: 30,
            bottom: 30,
          ),
          child: Center(
            child: Column(
              children: [
                Text(
                  'คำนวณค่าดัชนีมวลกาย (BMI)',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/bmi.png',
                  width: 200,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                // Weight
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'น้ำหนัก (kg.)',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // input weight
                TextField(
                  controller: wController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'กรุณากรอกน้ำหนัก',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // Height
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'ส่วนสูง (cm.)',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // input height
                TextField(
                  controller: hController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'กรุณากรอกส่วนสูง',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // Calculate button
                ElevatedButton(
                  onPressed: () {
                    // Validate input
                    if (wController.text.isEmpty || hController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('กรุณากรอกน้ำหนักและส่วนสูง'),
                        ),
                      );
                      return;
                    }

                    double w = double.parse(wController.text);
                    double h = double.parse(hController.text) / 100;
                    double bmi = w / (h * h);
                    String result = '';
                    if (bmi < 18.5) {
                      result = 'น้ำหนักน้อย / ผอม';
                    } else if (bmi >= 18.5 && bmi < 25) {
                      result = 'น้ำหนักปกติ';
                    } else if (bmi >= 25 && bmi < 30) {
                      result = 'น้ำหนักมาก / โรคอ้วนระดับ 1';
                    } else if (bmi >= 30 && bmi < 35) {
                      result = 'โรคอ้วนระดับ 2';
                    } else {
                      result = 'โรคอ้วนระดับ 3';
                    }
                    this.bmi = bmi.toStringAsFixed(2);
                    this.result = result;
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    padding: EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 15,
                    ),
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      60,
                    ),
                  ),
                  child: Text(
                    'คำนวณ BMI',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                // Clear button
                ElevatedButton(
                  onPressed: () {
                    wController.clear();
                    hController.clear();
                    bmi = '0.00';
                    result = '';
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    padding: EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 15,
                    ),
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      60,
                    ),
                  ),
                  child: Text(
                    'ล้างข้อมูล',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.green[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'BMI',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        bmi,
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 60,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        result,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
