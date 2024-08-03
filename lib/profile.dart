import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Create your Profile'),
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Row(children: [
                  Image.asset('assets/images/male.png'),
                  const Text('Male'),
                ],),
                Row(children: [
                  Image.asset('assets/images/female.png'),
                  const Text('Female'),
                ],),
              ]
            )
          ],
        ),
      ),
    ));
  }
}
