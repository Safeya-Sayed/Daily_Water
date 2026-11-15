import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double litres;
  final int weight;
  final double activityHours;
  final int age;

  const ResultScreen({
    super.key,
    required this.litres,
    required this.weight,
    required this.activityHours,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B1020),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Your Daily Water Intake",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Color(0xFF141A2E),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.cyan, width: 2),
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.water_drop, color: Colors.cyan, size: 50),
                        SizedBox(height: 10),
                        Text(
                          '${litres.toStringAsFixed(2)} L / Day',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.cyan,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Estimated value\n(educational formula)',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Color(0xffB0BEC5)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  Text(
                    'Educational estimate only — not medical advice',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xffB0BEC5)),
                  ),
                  SizedBox(height: 20),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xFF141A2E),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      'Spread your drinking over the day. Needs vary.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xFF141A2E),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Weight: $weight kg',
                                style: TextStyle(color: Colors.white)),
                            Text('Activity: ${activityHours.toInt()} h',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        SizedBox(height: 8),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Age: $age years',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              width: double.infinity,
              height: 70,
              color: Colors.cyan,
              alignment: Alignment.center,
              child: Text(
                'Re-calculate',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}