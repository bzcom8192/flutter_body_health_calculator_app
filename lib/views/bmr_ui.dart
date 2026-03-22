import 'package:flutter/material.dart';

class BmrUi extends StatefulWidget {
  const BmrUi({super.key});

  @override
  State<BmrUi> createState() => _BmrUiState();
}

class _BmrUiState extends State<BmrUi> {
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
                  'คำนวณหาอัตราการเผาผลาญที่ร่างกายต้องการ (BMR)',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/bmr.png',
                  width: 200,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'เพศ',
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
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          padding: EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 15,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          'ชาย',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          padding: EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 15,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          'หญิง',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
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
                TextField(
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
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'กรุณากรอกส่วนสูง',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'อายุ (ปี)',
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
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'กรุณากรอกอายุ',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {},
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
                    'คำนวณ BMR',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {},
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
                        'BMR',
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
                        '0.00',
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
                        'kcal/day',
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
