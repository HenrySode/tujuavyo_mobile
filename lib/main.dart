import 'package:flutter/material.dart';
import 'package:tujuavyo/components/color.dart';
import 'package:tujuavyo/config/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        fontFamily: 'Urbanist',
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.onboarding,
      routes: AppRoutes.pages,
    );
  }
}
