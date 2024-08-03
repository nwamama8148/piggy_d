import 'package:flutter/material.dart';
// import 'package:piggy_d/homepage.dart';
import 'package:piggy_d/onboarding_screen.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenHeight = screenSize.height;
    double screenWidth = screenSize.width;

    return SafeArea(
        child: Scaffold(
          // backgroundColor: Col,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        decoration: const BoxDecoration(
           gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 12, 14, 36),
                        //  Color(0xFF5E629E),
                        Color.fromARGB(255, 52, 55, 97),
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      // stops: [1.0,0.5,0.1]
                    ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/check.png', width:300, height:290),
            const SizedBox(
              height:15
            ),
            const Text('Process done!!!', style:TextStyle(color: Color(0xFFFFFFFF), fontFamily: 'Poppins', fontSize:22),),
            const SizedBox(
              height:
              50
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Custom border radius
                ),
                minimumSize: Size(screenWidth * 0.95, screenHeight * 0.084),
                backgroundColor: const Color(0xFFFC795B),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OnboardingScreen(),
                  ),
                );
              },
              child: const Text(
                'Finish',
                style: TextStyle(
                  color: Color(0xFFF2F3F5),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
