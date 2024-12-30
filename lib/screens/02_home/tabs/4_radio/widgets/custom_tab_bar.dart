import 'package:flutter/material.dart';
import '../../../../../resourses/colors_manager.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          12,
        ),
        color: ColorsManager.grey.withValues(alpha: 0.3),
      ),
      child: TabBar(
        labelColor: ColorsManager.black,
        unselectedLabelColor: ColorsManager.white,
        indicatorColor: Colors.pink,
        dividerHeight: 0.0,
        labelStyle: Theme.of(context).textTheme.titleSmall,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(
            12,
          ),
          color: ColorsManager.beige,
        ),
        //note that the number of tabs should be equal to the length of the DefualtTabController widget
        tabs: const [
          Tab(
            text: 'Radio',
          ),
          Tab(
            text: 'Reciters',
          )
        ],
      ),
    );
  }
}
