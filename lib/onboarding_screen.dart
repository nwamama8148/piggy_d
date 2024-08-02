import 'package:flutter/material.dart';
import 'package:piggy_d/guardian_page.dart';

Color linear1 = const Color(0xFF363966);
Color linear2 = const Color(0xFF0E1030);
Color linear3 = const Color(0xFFFFFFFF);
Color linear4 = const Color(0xFFECECF6);

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenHeight = screenSize.height;
    double screenWidth = screenSize.width;

    // bool isHovered = false;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFECECF6),
        body: Column(
          children: [
            Container(
              height: screenHeight * 0.4,
              width: double.infinity,
              // color: Colors.red,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    linear2,
                    linear1,
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset('assets/images/logo.png', width:90,),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 17,
                    ),
                    child: Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        ''' Welcome to the world of financially smart kids sxdcfghjkjhgfghj''',
                        style: TextStyle(
                          color: Color(0xFF9C9DAC),
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              height: screenHeight * 0.2,
              width: double.infinity,
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    
                    'assets/images/first_screen_earn.png',
                    width: 97,
                    height: 87,
                  ),
                  Transform.translate(
                    offset: const Offset(0, 30),
                    child: Image.asset(
                      'assets/images/piggy.png',
                      width: 97,
                      height: 87,
                    ),
                  ),
                  Image.asset(
                    'assets/images/invest.png',
                    width: 97,
                    height: 87,
                  ),
                ],
              ),
            ),
            const Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 49.0, vertical: 26),
              child: const Text(
                textAlign: TextAlign.center,
                ''' Set tasks to incentivize Desired behavior in kids''',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w200,
                    fontFamily: 'Bold'),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Custom border radius
                ),
                minimumSize: Size(screenWidth * 0.83, screenHeight * 0.08),
                backgroundColor: Color(0xFFFC795B),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GuardianPage(),
                  ),
                );
              },
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  color: Color(0xFFF2F3F5),
                ),
              ),
            ),
            SizedBox(height: 15),
            const Text.rich(TextSpan(
                text: 'Already have an account? ',
                style: TextStyle(
                  color: Color(0xFF9C9DAC),
                ),
                children: [
                  TextSpan(
                    text: 'Sign In',
                    style: TextStyle(
                      color: Color(0xFFFC795B),
                      fontWeight: FontWeight.bold,
                    ),
                    // recognizer: _tapGestureRecognizer,
                  ),
                ]))
          ],
        ),
      ),
    );
  }
}
