import 'package:flutter/material.dart';
import 'splash.dart';
import 'startup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Disable the debug banner
      home: SplashScreen(), // Set SplashScreen as the starting page
    );
  }
}
