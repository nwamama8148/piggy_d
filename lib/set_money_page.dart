import 'package:flutter/material.dart';
import 'package:piggy_d/homepage.dart';

class SetMoneyPage extends StatefulWidget {
  const SetMoneyPage({super.key});

  @override
  State<SetMoneyPage> createState() => _SetMoneyPageState();
}

class _SetMoneyPageState extends State<SetMoneyPage> {
  int _numero = 0;

  void _increment() {
    setState(() {
      _numero++;
    });
  }

  void _decrement() {
    setState(() {
      _numero--;
    });
  }

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
            'Set Pocket Money',
            style: TextStyle(fontSize: 16),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 23,
                ),
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 90.0),
                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      '''Set saving % of Pocket Money''',
                      style: TextStyle(fontFamily: 'Sans', fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 29,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        _decrement();
                      },
                      child: Image.asset(
                        'assets/images/Minus.png',
                        width: 38,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        '$_numero%',
                        style:
                            const TextStyle(fontFamily: 'Bold', fontSize: 40),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _increment();
                      },
                      child: Image.asset(
                        'assets/images/Plus.png',
                        width: 38,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 95,
                ),
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
                        builder: (context) => const Homepage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      color: Color(0xFFF2F3F5),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
