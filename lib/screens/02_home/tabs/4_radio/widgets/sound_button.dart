import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../resourses/assets_manager.dart';

class SoundButton extends StatefulWidget {
  const SoundButton({
    super.key,
  });

  @override
  State<SoundButton> createState() => _SoundButtonState();
}

class _SoundButtonState extends State<SoundButton> {
  bool isMuted = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isMuted = !isMuted;
        });
      },
      icon: SvgPicture.asset(
        isMuted == true ? SvgAssets.mute : SvgAssets.loud,
      ),
    );
  }
}
