import 'package:flutter/material.dart';
import '../models/sura_model.dart';
import '../screens/01_onboarding/onboarding_screen.dart';
import '../screens/02_home/home_screen.dart';
import '../screens/03_sura_details/sura_details_screen.dart';

class Routes {
  static const String onBoardingRoute = "/";
  static const String homeRoute = "/home_route";
  static const String suraDetailsRoute = "/sura_details_route";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.suraDetailsRoute:
        final args = settings.arguments as SuraModel;
        return MaterialPageRoute(
            builder: (_) => SuraDetailsScreen(suraModel: args));
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text('S.current.noRouteFound'),
              ),
              body: const Center(child: Text('S.current.noRouteFound')),
            ));
  }
}
