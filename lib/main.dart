import 'package:flutter/material.dart';
import 'splash_screen.dart'; // Ensure this import is correct

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(primarySwatch: Colors.brown),
      home: SplashScreen(), // ✅ Correct class name
    );
  }
}
