import 'package:flutter/material.dart';

class Enm extends StatelessWidget {
  const Enm({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Enter Your Phone Number'),
        ),
        // body: Column(
        //   children: [
        //     Image.asset('name'),
        //     const Text('''We will send a 4 digit code to verify this number'''),
        //     const Row(
        //       children: [
        //         const TextField(),
        //         const TextField(),
        //       ],
        //     )
        //   ],
        // ),
      ),
    );
  }
}
