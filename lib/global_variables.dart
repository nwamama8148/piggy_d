import 'package:flutter/material.dart';
import 'package:piggy_d/set_money_page.dart';


// Color
class GlobalVariables extends StatelessWidget {
  const GlobalVariables({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

Color linear1 = const Color(0xFF363966);
Color linear2 = const Color(0xFF0E1030);


ElevatedButton btn(double screenWidth, double screenHeight, BuildContext context) {
    return ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Custom border radius
                ),
                minimumSize: Size(screenWidth * 0.95, screenHeight * 0.084),
                backgroundColor: const Color(0xFFFC795B),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SetMoneyPage(),
                  ),
                );
              },
              child: const Text(
                'Proceed',
                style: TextStyle(
                  color: Color(0xFFF2F3F5),
                ),
              ),
            );}