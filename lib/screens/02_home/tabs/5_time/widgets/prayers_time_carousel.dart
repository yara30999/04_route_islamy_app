import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'prayer_card.dart';

class PrayersTimeCarousel extends StatefulWidget {
  const PrayersTimeCarousel({super.key});

  @override
  State<PrayersTimeCarousel> createState() => _PrayersTimeCarouselState();
}

class _PrayersTimeCarouselState extends State<PrayersTimeCarousel> {
  // note this have to be model in the future :)
  final List<Map<String, String>> prayerTimes = [
    {"title": "Fajr", "time": "05:04 AM"},
    {"title": "Dhuhr", "time": "01:01 PM"},
    {"title": "ASR", "time": "04:38 PM"},
    {"title": "Maghrib", "time": "07:57 PM"},
    {"title": "Isha", "time": "09:30 PM"},
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: prayerTimes.length,
      options: CarouselOptions(
        height: 130,
        initialPage: prayerTimes.length ~/ 2,
        enlargeCenterPage: true,
        autoPlay: false,
        viewportFraction: 0.3,
        onPageChanged: (index, reason) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      itemBuilder: (context, index, realIndex) {
        final prayer = prayerTimes[index];
        final isActive =
            index == _currentIndex; // Check if it's the active item
        return PrayerCard(
          title: prayer["title"]!,
          time: prayer["time"]!,
          isActive: isActive,
        );
      },
    );
  }
}
