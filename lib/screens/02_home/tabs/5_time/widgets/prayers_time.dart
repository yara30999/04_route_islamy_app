import 'package:flutter/material.dart';
import '../../../../../resourses/assets_manager.dart';
import '../../../../../resourses/colors_manager.dart';
import 'prayers_footer.dart';
import 'prayers_header.dart';
import 'prayers_time_carousel.dart';

class PrayersTime extends StatelessWidget {
  const PrayersTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      decoration: BoxDecoration(
        color: ColorsManager.brown,
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage(PngAssets.prayersPaint),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            PrayersTimesHeader(),
            PrayersTimeCarousel(),
            PrayersTimeFooter(),
          ],
        ),
      ),
    );
  }
}
