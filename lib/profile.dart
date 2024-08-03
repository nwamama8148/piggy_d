import 'package:flutter/material.dart';
import 'package:piggy_d/profile_pan_number_page.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenHeight = screenSize.height;
    double screenWidth = screenSize.width;

    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        bottomOpacity: 0.3,
        backgroundColor: const Color(0xFFFFFFFF),
        title: const Text(
          'Create your Profile',
          style: TextStyle(fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 18.0, horizontal: 18),
              child: Container(
                padding: const EdgeInsets.all(3),
                color: const Color(0xFFECECF2),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: screenWidth * 0.4,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/images/male.png'),
                            const Text('Male'),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.4,
                        height: 57,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/images/female.png'),
                            const Text('Female'),
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    textAlign: TextAlign.start,
                    'Your Name',
                    style: TextStyle(
                      color: Color(0xFF9C9DAC),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 3),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(fontFamily: 'Regular'),
                      hintText: 'Enter your Name',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    textAlign: TextAlign.start,
                    'Date of Birth',
                    style: TextStyle(
                      color: Color(0xFF9C9DAC),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 3),
                  TextFormField(
                    keyboardType: TextInputType.datetime,
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(fontFamily: 'Regular'),
                      hintText: 'DD/MM//YY',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.2),
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
                    builder: (context) => const ProfilePanNumberPage(),
                  ),
                );
              },
              child: const Text(
                'Proceed',
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
