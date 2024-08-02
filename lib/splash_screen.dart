import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // Size screenSize = MediaQuery.of(context).size;
    // double screenHeight = screenSize.height;
    // double screenWidth = screenSize.width;

    return SafeArea(
      child: Scaffold(
        body: Text('data'),
      ),
    );
  }
}