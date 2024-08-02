// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// import 'guardian_page.dart';

// // Color
// class GlobalVariables extends StatelessWidget {
//   const GlobalVariables({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

// Color linear1 = const Color(0xFF363966);
// Color linear2 = const Color(0xFF0E1030);

// ElevatedButton linkBtn(
//     double screenWidth, double screenHeight, BuildContext context) {
//   return ElevatedButton(
//     style: ElevatedButton.styleFrom(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10), // Custom border radius
//       ),
//       minimumSize: Size(screenWidth * 0.83, screenHeight * 0.08),
//       backgroundColor: Color(0xFFFC795B),
//     ),
//     onPressed: () {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => const GuardianPage(),
//         ),
//       );
//       if (kDebugMode) {
//         print('next');
//       };
//     },
//     child: const Text(
//       'Sign Up',
//       style: TextStyle(
//         color: Color(0xFFF2F3F5),
//       ),
//     ),
//   );
// }
