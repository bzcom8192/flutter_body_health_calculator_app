import 'package:flutter/material.dart';
import 'package:flutter_body_health_calculator_app/views/home_ui.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  void initState() {
    // delay for 3 seconds and then navigate to the HomeUi
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUi(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // spacing: 20,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 180,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            // Title
            Text(
              'Body Health Calculator',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Subtitle
            Text(
              '© 2026 All rights reserved.',
              style: TextStyle(
                color: Colors.grey[300],
                fontSize: 14,
              ),
            ),
            // Author
            Text(
              'Created by Supanat.',
              style: TextStyle(
                color: Colors.grey[300],
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 5,
            ),
          ],
        ),
      ),
    );
  }
}
