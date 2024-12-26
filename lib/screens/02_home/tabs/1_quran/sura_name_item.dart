import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../models/sura_model.dart';
import '../../../../resourses/assets_manager.dart';

class SuraNameItem extends StatelessWidget {
  final SuraModel model;

  const SuraNameItem({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(PngAssets.suraNumber),
            Container(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                "${model.index}",
                style: GoogleFonts.elMessiri(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )
          ],
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.nameEn,
                style: GoogleFonts.elMessiri(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                "${model.numOfVerses} Verses",
                style: GoogleFonts.elMessiri(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
        Text(
          model.nameAr,
          style: GoogleFonts.elMessiri(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        )
      ],
    );
  }
}
