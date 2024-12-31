import 'package:flutter/material.dart';
import '../../../../../models/azkar_model.dart';
import '../../../../../resourses/colors_manager.dart';

class AzkarCard extends StatelessWidget {
  final AzkarModel azkarModel;
  const AzkarCard({
    super.key,
    required this.azkarModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.black,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: ColorsManager.beige,
          width: 1,
        ),
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Image.asset(
          azkarModel.asset,
        ),
        Text(
          azkarModel.title,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: ColorsManager.white),
        ),
      ]),
    );
  }
}
