import 'package:flutter/material.dart';
import 'package:imtihon2_oy/screens/splash.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  static double eni = 0;
  static double boyi = 0;
  @override
  Widget build(BuildContext context) {
    eni = MediaQuery.of(context).size.width;
    boyi = 800;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
