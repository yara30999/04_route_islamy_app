import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../models/sura_model.dart';
import '../../../../resourses/assets_manager.dart';
import '../../../../resourses/colors_manager.dart';

class SuraNameHorizontalItem extends StatelessWidget {
  final SuraModel model;

  const SuraNameHorizontalItem({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: ColorsManager.beige,
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                model.nameEn,
                style: GoogleFonts.elMessiri(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                model.nameAr,
                style: GoogleFonts.elMessiri(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${model.numOfVerses} Verses",
                style: GoogleFonts.elMessiri(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Image.asset(PngAssets.suraItem)
        ],
      ),
    );
  }
}
