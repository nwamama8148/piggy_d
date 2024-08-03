import 'package:flutter/material.dart';
import 'package:piggy_d/checkout_page.dart';

import 'coming_soon_page.dart';

List<dynamic> imgs = [
  'assets/images/p1.png',
  'assets/images/p2.png',
  'assets/images/p3.png',
  'assets/images/p4.png',
  'assets/images/p5.png',
  'assets/images/p6.png',
  'assets/images/p7.png',
  'assets/images/p8.png',
  'assets/images/p9.png',
];

class Homepage extends StatelessWidget {
  const Homepage({super.key});

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
          title: const Text(
            'Choose Investment Portfolio',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23.0, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // const SizedBox(
              //   height: 5,
              // ),
              Container(
                height: screenHeight * 0.24,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 29, 32, 61),
                        //  Color(0xFF5E629E),
                        Color.fromARGB(255, 112, 116, 170),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topRight,
                      // stops: [1.0,0.5,0.1]
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Image.asset(
                        'assets/images/Group.png',
                        height: 113,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 38.0, right: 17),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Guardian',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 15,
                                fontFamily: 'Arial'),
                          ),
                          Text(
                            'David Josh',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 15,
                                fontFamily: 'Arial'),
                          ),
                          Text(
                            '''A/C No: 20070794647''',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 12,
                                fontFamily: 'Sans'),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              const Center(child: Text('(mutual funds - SIIP plans )')),
              const SizedBox(
                height: 24,
              ),
              Expanded(
                  child: GridView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of items per row
                  crossAxisSpacing: 28.0, // Horizontal spacing between items
                  mainAxisSpacing: 38.0, // Vertical spacing between items
                ),
                itemCount: imgs.length, // Minimum of 8 images
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ComingSoonPage(),
                        ),
                      );
                    },
                    child: Image.asset(
                      imgs[index],
                      width: 70,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              )),

              ElevatedButton(
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
                      builder: (context) => const CheckoutPage(),
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
      ),
    );
  }
}
