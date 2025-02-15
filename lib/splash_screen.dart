import 'package:flutter/material.dart';
import 'main_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => MainScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal, // ✅ Background color teal
      body: Center(
        child: Text(
          "Welcome to My App",
          style: TextStyle(
            fontSize: 24, // ✅ Bigger text size
            fontWeight: FontWeight.bold, // ✅ Bold text
            color: Colors.white, // ✅ White text for contrast
          ),
          textAlign: TextAlign.center, // ✅ Center align text
        ),
      ),
    );
  }
}
