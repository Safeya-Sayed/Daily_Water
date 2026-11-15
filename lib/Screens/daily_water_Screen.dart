import 'package:flutter/material.dart';
import 'package:daily_water/Widgets/Gendercard.dart';
import '../widgets/number.dart';
import 'result_screen.dart';
class dailywater extends StatefulWidget {
  const dailywater({super.key});

  @override
  State<dailywater> createState() => _dailywaterState();
}

class _dailywaterState extends State<dailywater>
{
  bool isMale=true;
  double activityHours=2.0;
  int age = 18;
  int weight = 60;

  double calculateWater() {
    double baseML = weight * 35;
    double activityML = activityHours * 250;
    return (baseML + activityML) / 1000;
  }

  void showResult() {
    double litres = calculateWater();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ResultScreen(
          litres: litres,
          weight: weight,
          activityHours: activityHours,
          age: age,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A0E21),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
          title:  Row(

              children: [
                Text("💧"),
                SizedBox(width: 10,),
              Expanded(child:
              Center(
                 child:  Text("Water Tracker",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),

              ),
              ),

              ),

              ],
          ),
      ),
      body: Column(
   children: [
     Expanded(child:
          Row(
       children: [
         Gendercard(
              title: 'MALE',
              icon: Icons.male,
              isSelected: isMale,
              ontap: () => setState(() => isMale = true),

            ),
         Gendercard(
           title: 'FEMALE',
           icon: Icons.female,
           isSelected: !isMale,
           ontap: () => setState(() => isMale = false),

         ),
       ],

          ),
     ),
     Expanded(
       child: Container(
         margin: const EdgeInsets.all(15),
         decoration: boxStyle(),
         child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
           children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("ACTIVITY (hours/day)", style: TextStyle(fontSize: 20,color:Color(0xffB0BEC5))),
                Text(
                  '${activityHours.toInt()} h', style: TextStyle(fontSize: 40, color: Colors.cyan)
                ),
              ],


       ),
             Slider(
               value: activityHours,
               min:0.0,
               max: 8.0,
               activeColor: Colors.cyan,
               onChanged: (value) => setState(() => activityHours = value),
               inactiveColor: Colors.white24,
             ),
    ],
    ),

     ),
    ),
     Expanded(
       child: Row(
         children: [
           NumberCard(
             title: 'WEIGHT (kg)',
             value: weight,
             icon1: Icons.remove,
             icon2: Icons.add,
             onAdd: () => setState(() => weight++),
             onSub: () => setState(() => weight--),
           ),
           NumberCard(
             title: 'AGE (years)',
             value: age,
             icon1: Icons.remove,
             icon2: Icons.add,
             onAdd: () => setState(() => age++),
             onSub: () => setState(() => age--),
           ),
         ],
       ),
     ),
     GestureDetector(
       onTap: showResult,
       child: Container(
         width: double.infinity,
         height: 70,
         color: Colors.cyan,
         alignment: Alignment.center,
         child: const Text(
           'Calculate Water Intake',
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
  BoxDecoration boxStyle() {
    return BoxDecoration(
      color: const Color(0xFF141A2E),
      borderRadius: BorderRadius.circular(15),
    );
  }
}
