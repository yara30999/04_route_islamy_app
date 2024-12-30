import 'package:flutter/material.dart';
import '../../../../resourses/assets_manager.dart';
import '../../../../resourses/colors_manager.dart';
import 'rotating_sebha.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            "سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: ColorsManager.white),
          ),
          Image.asset(PngAssets.sebhaTail),
          RotatingSebha(),
        ],
      ),
    );
  }
}
