import 'package:flutter/material.dart';
import 'audio_card.dart';

class RecitersTabView extends StatelessWidget {
  const RecitersTabView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //note : you have to make a model to recieve the actual data from the api
    return ListView.separated(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return AudioCard();
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 16.0,
        );
      },
    );
  }
}
