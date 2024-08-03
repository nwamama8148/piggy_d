import 'package:flutter/material.dart';

class ComingSoonPage extends StatelessWidget {
  const ComingSoonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          appBar: AppBar(),
      body: const Text(
        ''' COMING SOON ''',
        style: TextStyle(fontSize: 60, fontFamily: 'Poppins'),
      ),
    ));
  }
}
