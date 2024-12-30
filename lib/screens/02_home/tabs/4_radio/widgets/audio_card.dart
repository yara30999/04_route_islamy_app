import 'package:flutter/material.dart';
import '../../../../../resourses/assets_manager.dart';
import '../../../../../resourses/colors_manager.dart';
import 'play_button.dart';
import 'sound_button.dart';

class AudioCard extends StatelessWidget {
  const AudioCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            PngAssets.mosque,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(
          20,
        ),
        color: ColorsManager.beige,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Radio Ibrahim Al-Akdar',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: ColorsManager.black),
          ),
          Row(
            children: [
              Spacer(),
              PlayButton(),
              Flexible(
                child: Row(
                  children: [
                    SoundButton(),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
