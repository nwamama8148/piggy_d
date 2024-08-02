import 'package:flutter/material.dart';

import 'enm.dart';
import 'onboarding_screen.dart';

class GuardianPage extends StatelessWidget {
  const GuardianPage({super.key});
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenHeight = screenSize.height;
    double screenWidth = screenSize.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                linear3,
                linear4,
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              //  stops: [1.0, 2.3],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 38.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset('assets/images/logo.png', width: 70),
                ),
              ),
              Image.asset('assets/images/guardian_img.png', width: 194),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'assets/images/Wallet.png',
                    width: 80,
                  ),
                  Image.asset(
                    'assets/images/guardian_earn.png',
                    width: 80,
                  ),
                  Image.asset(
                    'assets/images/Spent.png',
                    width: 80,
                  ),
                ],
              ),
              const SizedBox(height: 27),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Custom border radius
                  ),
                  minimumSize: Size(screenWidth * 0.85, screenHeight * 0.08),
                  backgroundColor: const Color(0xFFFC795B),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Enm(),
                    ),
                  );
                },
                child: const Text(
                  'Shop Rewards',
                  style: TextStyle(
                    color: Color(0xFFF2F3F5),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar:
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.wallet_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.attach_money_rounded,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.card_giftcard_sharp,
            ),
          ),
        ]),
      ),
    );
  }
}
