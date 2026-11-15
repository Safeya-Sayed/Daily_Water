import 'package:flutter/material.dart';
import 'Screens/daily_water_Screen.dart';

void main() {
  runApp(const baseScreen());
}

class baseScreen extends StatelessWidget {
  const baseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: dailywater(),
    );
  }
}
