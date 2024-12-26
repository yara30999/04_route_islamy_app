import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "quran Tab",
            style: GoogleFonts.elMessiri(
              fontSize: 22,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
