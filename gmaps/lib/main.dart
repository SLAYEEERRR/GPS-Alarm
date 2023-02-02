// import 'package:gmaps/Screens/alarms.dart';
import 'package:flutter/material.dart';
import 'package:gmaps/Screens/maps.dart';
// import 'package:gmaps/Screens/splash_screen.dart';

void main() {
  runApp(const Start());
}

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Maps(),
    );
  }
}
