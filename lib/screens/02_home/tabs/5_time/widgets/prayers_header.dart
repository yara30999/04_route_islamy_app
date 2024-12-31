import 'package:flutter/material.dart';
import '../../../../../resourses/colors_manager.dart';

class PrayersTimesHeader extends StatelessWidget {
  const PrayersTimesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10),
        Text(
          '16 Jul,\n2024',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: ColorsManager.white,
              ),
        ),
        Spacer(),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Prayers Time\n',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: ColorsManager.brown,
                    ),
              ),
              TextSpan(
                text: 'Tuesday',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: ColorsManager.black,
                    ),
              ),
            ],
          ),
        ),
        Spacer(),
        Text(
          '09 Muh,\n1446',
          textAlign: TextAlign.right,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: ColorsManager.white,
              ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
