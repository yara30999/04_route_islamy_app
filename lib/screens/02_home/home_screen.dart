import 'package:flutter/material.dart';
import '../../resourses/assets_manager.dart';
import '../../resourses/colors_manager.dart';
import 'tabs/1_quran/quran_tab.dart';
import 'tabs/2_ahadeth/ahadeth_tab.dart';
import 'tabs/3_sebha/sebha_tab.dart';
import 'tabs/4_radio/radio_tab.dart';
import 'tabs/5_time/time_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _tabs = [
    QuranTab(),
    AhadethTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab(),
  ];

  String _getBackgroundImageName(index) {
    switch (index) {
      case 0:
        return PngAssets.homeBackground;
      case 1:
        return PngAssets.ahadethBackground;
      case 2:
        return PngAssets.sebhaBackground;
      case 3:
        return PngAssets.radioBackground;
      default:
        return PngAssets.homeBackground;
    }
  }

  Widget _buildNavItem(int index, String imageName) {
    return _selectedIndex == index
        ? Container(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
            decoration: BoxDecoration(
              color: ColorsManager.darkGrey,
              borderRadius: BorderRadius.circular(66),
            ),
            child: ImageIcon(
              AssetImage(imageName),
            ))
        : ImageIcon(
            AssetImage(imageName),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(_getBackgroundImageName(_selectedIndex)),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Image.asset(PngAssets.onboardingHeader),
            Expanded(
                child: IndexedStack(
              index: _selectedIndex,
              children: _tabs,
            )),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (value) {
              setState(() {
                _selectedIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: _buildNavItem(0, PngAssets.quranIcon), label: "Quran"),
              BottomNavigationBarItem(
                  icon: _buildNavItem(1, PngAssets.ahadethIcon),
                  label: "Ahadeth"),
              BottomNavigationBarItem(
                  icon: _buildNavItem(2, PngAssets.sebhaIcon), label: "Sebha"),
              BottomNavigationBarItem(
                  icon: _buildNavItem(3, PngAssets.radioIcon), label: "Radio"),
              BottomNavigationBarItem(
                  icon: _buildNavItem(4, PngAssets.datesIcon), label: "Time"),
            ]),
      ),
    );
  }
}
