import 'package:flutter/material.dart';
import 'app/app_prefs.dart';
import 'resourses/routes_manager.dart';
import 'resourses/theme_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppPreferences.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getLightTheme(),
      themeMode: ThemeMode.light,
      initialRoute: AppPreferences.getEligibility() == true
          ? Routes.homeRoute
          : Routes.onBoardingRoute,
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}
