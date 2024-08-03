import 'package:flutter/material.dart';
import 'package:piggy_d/global_variables.dart';

class ProfilePanNumberPage extends StatelessWidget {
  const ProfilePanNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenHeight = screenSize.height;
    double screenWidth = screenSize.width;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create your Profile',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: screenHeight * 0.2,
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
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                textAlign: TextAlign.start,
                'PAN Number',
                style: TextStyle(
                  color: Color(0xFF9C9DAC),
                  fontSize: 12,
                  fontFamily: 'Sans',
                ),
              ),
              SizedBox(
                height: 35,
                child: TextFormField(
                  keyboardType: const TextInputType.numberWithOptions(),
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(fontFamily: 'Regular', fontSize: 12),
                    hintText: 'Enter a unique Pan Number',
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
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                textAlign: TextAlign.start,
                'Branch',
                style: TextStyle(
                  color: Color(0xFF9C9DAC),
                  fontSize: 12,
                  fontFamily: 'Sans',
                ),
              ),
              SizedBox(
                height: 35,
                child: TextFormField(
                  keyboardType: const TextInputType.numberWithOptions(),
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(fontFamily: 'Regular', fontSize: 12),
                    hintText: 'Enter a unique Pan Number',
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
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                textAlign: TextAlign.start,
                'Account Number',
                style: TextStyle(
                  color: Color(0xFF9C9DAC),
                  fontSize: 12,
                  fontFamily: 'Sans',
                ),
              ),
              SizedBox(
                height: 35,
                child: TextFormField(
                  keyboardType: const TextInputType.numberWithOptions(),
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(fontFamily: 'Regular', fontSize: 12),
                    hintText: 'Enter a unique Pan Number',
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
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                textAlign: TextAlign.start,
                'IFSC Code',
                style: TextStyle(
                  color: Color(0xFF9C9DAC),
                  fontSize: 12,
                  fontFamily: 'Sans',
                ),
              ),
              SizedBox(
                height: 35,
                child: TextFormField(
                  keyboardType: const TextInputType.numberWithOptions(),
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(fontFamily: 'Regular', fontSize: 12),
                    hintText: 'Enter a unique Pan Number',
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
              ),
              const SizedBox(height: 45),
              btn(screenWidth, screenHeight, context),
            ],
          ),
        ),
      ),
    ));
  }
}
