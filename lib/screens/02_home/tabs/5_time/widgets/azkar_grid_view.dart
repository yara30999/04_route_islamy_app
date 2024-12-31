import 'package:flutter/material.dart';
import '../../../../../models/azkar_model.dart';
import '../../../../../resourses/assets_manager.dart';
import 'azkar_card.dart';

class AzkarGridView extends StatelessWidget {
  const AzkarGridView({super.key});

  static List<AzkarModel> get prayerTimes => [
        AzkarModel('Evening Azkar', PngAssets.illustration),
        AzkarModel('Morning Azkar', PngAssets.illustration1),
        AzkarModel(' Evening Azkar', PngAssets.illustration2),
        AzkarModel('Daily Duas', PngAssets.illustration3),
      ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(top: 0),
      itemCount: prayerTimes.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 20.0,
          childAspectRatio: 185 / 259),
      itemBuilder: (context, index) {
        return AzkarCard(
          azkarModel: prayerTimes[index],
        );
      },
    );
  }
}
