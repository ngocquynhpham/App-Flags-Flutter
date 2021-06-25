import 'package:Flags/Screens/home.dart';
import 'package:Flags/style/style.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

const _url = 'https://ngocquynhpham.github.io/';

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: screenHeight(context),
        width: screenWidth(context),
        child: Container(
          child: Center(
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    'lib/images/bg-intro.png',
                    fit: BoxFit.cover,
                    height: screenHeight(context),
                    width: screenWidth(context),
                  ),
                ),
                Positioned(
                  child: Container(
                    width: screenWidth(context),
                    child: Column(
                      children: [
                        Text(
                          'Hello',
                          style: TextStyle(
                              fontSize: 40,
                              color: textIntro,
                              fontFamily: 'Righteous-Regular'),
                        ),
                        Text(
                          'I\'m Quynh',
                          style: TextStyle(
                              fontSize: 40,
                              color: textIntro,
                              fontFamily: 'Righteous-Regular'),
                        ),
                        Text(
                          'I was born in Viet Nam.',
                          style: TextStyle(
                            fontSize: 20,
                            color: textIntro,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(10),
                          child: InkWell(
                            child: Text(
                              'Skip',
                              style: TextStyle(
                                fontSize: 20,
                                color: textIntro,
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()),
                                );
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  top: 300,
                ),
                Positioned(
                  child: Container(
                    width: screenWidth(context),
                    alignment: Alignment.center,
                    child: Image.asset(
                      'lib/images/me.png',
                      height: 300,
                    ),
                  ),
                  top: 0,
                ),
              ],
            ),
            // child: Image.asset('lib/assets/brands/logo-sm.png'),
          ),
        ),
      ),
    );
  }
}
