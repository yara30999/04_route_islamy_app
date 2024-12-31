import 'package:flutter/material.dart';
import '../../../../resourses/colors_manager.dart';
import 'widgets/azkar_grid_view.dart';
import 'widgets/prayers_time.dart';

class TimeTab extends StatelessWidget {
  const TimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PrayersTime(),
          SizedBox(height: 20.0),
          Text(
            'Azkar',
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: ColorsManager.white),
          ),
          SizedBox(height: 20.0),
          Expanded(
            child: AzkarGridView(),
          ),
        ],
      ),
    );
  }
}
