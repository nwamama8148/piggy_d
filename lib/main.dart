import 'package:flutter/material.dart';
// import 'package:piggy_d/guardian_page.dart';
import 'package:piggy_d/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Piggy D',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFC795B),
          primary: const Color(0xFFFFFFFF),
          // onPrimaryContainer: LinearGradient(colors: colors),
        ),
        fontFamily: 'Poppins',
        
        useMaterial3: true,
      ),
      home: const OnboardingScreen(),
    );
  }
}
