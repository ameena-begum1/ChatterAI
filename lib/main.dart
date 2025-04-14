import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(ChatterAIApp());
}

class ChatterAIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatterAI',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
