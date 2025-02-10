import 'package:flutter/material.dart';
import 'package:pocked/screen/navbar/mainscreen.dart';
import 'package:pocked/screen/onboarding/splashscreen.dart';

final GlobalKey<HomeState> homeKey = GlobalKey<HomeState>();

// Main app widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: Colors.transparent,
      ),
      home: const SplashScreen(),
    );
  }
}

void main() {
  runApp(const MyApp());
}