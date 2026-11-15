import 'package:flutter/material.dart';
class Gendercard extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isSelected;
  final VoidCallback ontap;
  Gendercard({
    required this.title,
    required this.icon,
    required this.isSelected,
    required this.ontap,
});
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child:GestureDetector(
          onTap:ontap,
          child: Container(
            margin: EdgeInsets.all(13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xff141A2E),
              border: Border.all(
                color: isSelected ? Colors.cyan : Colors.transparent,
                width: 2,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 80, color: isSelected ? Colors.cyan : Colors.white),
                const SizedBox(height: 10),
                Text(
                  title,
                  style: TextStyle(
                    color: isSelected ? Colors.cyan : Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
