import 'package:flutter/material.dart';

class AboutUi extends StatefulWidget {
  const AboutUi({super.key});

  @override
  State<AboutUi> createState() => _AboutUiState();
}

class _AboutUiState extends State<AboutUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Body Health Calculator',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/logo.png',
                  width: 180,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'คำนวณค่าดัชนีมวลกาย BMI',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'คำนวณค่าแคลอรี่ที่ร่างกายต้องการ BMR',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Logosau-02.png/250px-Logosau-02.png',
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                Text(
                  'Developed by Supanat.',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
