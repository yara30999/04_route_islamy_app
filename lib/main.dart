import 'package:flutter/material.dart';

import 'resourses/routes_manager.dart';
import 'resourses/theme_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

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
      // TODO: ELIGIBILITY HERE
      initialRoute: Routes.onBoardingRoute,
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}
