import 'package:flutter/material.dart';
import '../../../../../resourses/colors_manager.dart';

class PrayerCard extends StatelessWidget {
  final String title;
  final String time;
  final bool isActive;

  const PrayerCard({
    super.key,
    required this.title,
    required this.time,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: isActive ? 110 : 90, // Larger for active card
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [ColorsManager.black, ColorsManager.lightBlack],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: isActive ? 16 : 14, // Larger font for active card
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 4),
            Text(
              time.split(" ")[0],
              style: TextStyle(
                fontSize: isActive ? 22 : 18, // Larger font for active card
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 4),
            Text(
              time.split(" ")[1],
              style: TextStyle(
                fontSize: isActive ? 14 : 12, // Larger font for active card
                fontWeight: FontWeight.normal,
                color: Colors.white54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
