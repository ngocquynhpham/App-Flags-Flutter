import 'dart:async';
import 'package:Flags/Screens/IntroScreen.dart';
import 'package:flutter/material.dart';
import '../style/style.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _controller.repeat();
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => IntroScreen()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: screenHeight(context),
        width: screenWidth(context),
        child: Container(
          child: Center(
            child: Image.asset(
              'lib/images/icon.png',
              height: 120, //MediaQuery.of(context).size.height,
            ),
          ),
        ),
      ),
    );
  }
}
