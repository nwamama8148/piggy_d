import 'package:flutter/material.dart';
import 'package:piggy_d/otp_page.dart';

class Enm extends StatefulWidget {
  const Enm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _EnmState createState() => _EnmState();
}

class _EnmState extends State<Enm> {
  String? _selectedIcon;

  final List<DropdownMenuItem<String>> _dropdownItems = [
    DropdownMenuItem(
      value: 'icon1',
      child: Row(
        children: [
          Image.asset('assets/images/flag.png'),
          // SizedBox(width: 10),
          // Text('Phone Icon'),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 'icon2',
      child: Row(
        children: [
          Image.asset('assets/images/flag.png'),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 'icon3',
      child: Row(
        children: [
          Image.asset('assets/images/flag.png'),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // final bottomPadding = MediaQuery.of(context).viewInsets.bottom;
    Size screenSize = MediaQuery.of(context).size;
    double screenHeight = screenSize.height;
    double screenWidth = screenSize.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Enter Your Phone'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  // color: Colors.red,
                  height: screenHeight * 0.4,
                  child: Center(
                    child: Image.asset(
                      'assets/images/img_one.png',
                      alignment: Alignment.center,
                      fit: BoxFit.contain,
                      height: 170,
                      width: 130,
                    ),
                  ),
                ),
                const Text(
                  '''We will send a 4 digit code to verify this number''',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Regular',
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 28),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Stack(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(
                                  color: Color(0xFF63687C),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(
                                  color: Colors.green,
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            bottom: 0,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                icon: const Icon(Icons.arrow_drop_down),
                                value: _selectedIcon,
                                items: _dropdownItems,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _selectedIcon = newValue;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      flex: 7,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              color: Color(0xFF63687C),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              color: Colors.green,
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 28),

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
                        builder: (context) => const OtpPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Verify',
                    style: TextStyle(
                      color: Color(0xFFF2F3F5),
                    ),
                  ),
                ),
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}
