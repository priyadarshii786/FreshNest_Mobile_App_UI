import 'package:FreshNest/common/color_extension.dart';
import 'package:FreshNest/view/splash_view.dart';
import 'package:FreshNest/common/color_extension.dart';
import 'package:FreshNest/view/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FreshNest',
      debugShowCheckedModeBanner:
          false, // to disable the banner that appears when running in debug mode.
      theme: ThemeData(
        fontFamily: "Gilroy",
        colorScheme: ColorScheme.fromSeed(seedColor: TColor.primary),
        useMaterial3: false,
      ),
      home:
          const SplashView(), // to display the splash screen which serves as the starting page as well as base of the app.
    );
  }
}
