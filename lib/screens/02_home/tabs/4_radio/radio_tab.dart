import 'package:flutter/material.dart';
import 'widgets/custom_tab_bar.dart';
import 'widgets/reciters_tab_view.dart';
import 'widgets/radio_tab_view.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            CustomTabBar(),
            Expanded(
              child: TabBarView(
                /*note that the number of TabBarView should 
                be equal to the length of the DefualtTabController widget
                */
                children: [
                  RadioTabView(),
                  RecitersTabView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
