import 'package:flutter/material.dart';
import 'package:piggy_d/profile.dart';

class RolePage extends StatelessWidget {
  const RolePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenHeight = screenSize.height;
    double screenWidth = screenSize.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFECECF6),
        appBar: AppBar(
          backgroundColor: const Color(0xFFECECF6),
          title: const Text('Select your Role'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Profile(),
                        ),
                      );
                    },
                    child: SizedBox(
                      width: 150,
                      height: 230,
                      child: Image.asset('assets/images/Guardian.png'),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Profile(),
                        ),
                      );
                    },
                    child: SizedBox(
                      width: 150,
                      height: 230,
                      child: Image.asset('assets/images/Junior.png'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.3),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Custom border radius
                ),
                minimumSize: Size(screenWidth * 0.9, screenHeight * 0.084),
                backgroundColor: const Color(0xFFFC795B),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Profile(),
                  ),
                );
              },
              child: const Text(
                'Continue',
                style: TextStyle(
                  color: Color(0xFFF2F3F5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
