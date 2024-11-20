import 'dart:async';

import 'package:flutter/material.dart';
import 'package:perfetto_app/ui/auth/auth_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const AuthScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Splash screen background color
      body: Center(
        child: Image.asset(
          'assets/icons/splash_icon.png', // Your app icon path
          width: 250, // Adjust size as needed
          height: 250,
        ),
      ),
    );
  }
}
