import 'package:Flags/Screens/Country.dart';
import 'package:flutter/material.dart';

import './AllCountries.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new AllCountries(),
      routes: {Country.routeName: (ctx) => Country()},
    );
  }
}
