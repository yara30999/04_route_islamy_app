import 'package:flutter/material.dart';
import '../../../../../resourses/colors_manager.dart';
import '../../4_radio/widgets/sound_button.dart';

class PrayersTimeFooter extends StatelessWidget {
  const PrayersTimeFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Next Pray ',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: ColorsManager.brown,
                    ),
              ),
              TextSpan(
                text: '- 02:32',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: ColorsManager.black,
                    ),
              ),
            ],
          ),
        ),
        Flexible(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SoundButton(),
            SizedBox(width: 10),
          ],
        )),
      ],
    );
  }
}
