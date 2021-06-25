import 'package:Flags/Screens/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flags App',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

// class AnimatedScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: primary,
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: Image.asset(
//           'lib/assets/splash.png',
//           fit: BoxFit.cover,
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//         ),
//       ),
//     );
//   }
//}
