import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../../resourses/assets_manager.dart';
import '../../resourses/colors_manager.dart';
import '../../resourses/routes_manager.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var pageDecoration = PageDecoration(
      titleTextStyle: Theme.of(context).textTheme.titleLarge!,
      bodyTextStyle: Theme.of(context).textTheme.headlineSmall!,
      imageFlex: 3,
      bodyPadding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: ColorsManager.black,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      globalBackgroundColor: ColorsManager.black,
      globalHeader: Image.asset(PngAssets.onboardingHeader),
      dotsFlex: 2,
      dotsDecorator: DotsDecorator(
          color: ColorsManager.grey,
          activeColor: ColorsManager.beige,
          spacing: EdgeInsets.all(5)),
      showNextButton: true,
      showBackButton: true,
      showDoneButton: true,
      back: Text(
        "Back",
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      next: Text(
        "Next",
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      done: Text(
        "Finish",
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      onDone: () {
        //TODO: save eligaibility here
        Navigator.pushNamed(context, Routes.homeRoute);
      },
      pages: [
        PageViewModel(
          title: "Welcome To Islmi App",
          body: "",
          image: Image.asset(
            PngAssets.onboarding1,
            width: 270,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Welcome To Islami",
          body: "We Are Very Excited To Have You In Our Community",
          image: Image.asset(
            PngAssets.onboarding2,
            width: 270,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Reading the Quran",
          body: "Read, and your Lord is the Most Generous",
          image: Image.asset(
            PngAssets.onboarding3,
            width: 270,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Bearish",
          body: "Praise the name of your Lord, the Most High",
          image: Image.asset(
            PngAssets.onboarding4,
            width: 270,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Holy Quran Radio",
          body:
              "You can listen to the Holy Quran Radio through the application for free and easily",
          image: Image.asset(
            PngAssets.onboarding5,
            width: 270,
          ),
          decoration: pageDecoration,
        ),
      ],
    );
  }
}
