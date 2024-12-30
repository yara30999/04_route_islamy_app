import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../resourses/assets_manager.dart';

class PlayButton extends StatefulWidget {
  const PlayButton({
    super.key,
  });

  @override
  State<PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  bool isPlaying = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isPlaying = !isPlaying;
        });
      },
      icon: SvgPicture.asset(
        isPlaying == true ? SvgAssets.pause : SvgAssets.play,
      ),
    );
  }
}
