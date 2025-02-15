import 'package:flutter/material.dart';
import 'sign_up_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal, // ✅ Background color teal
      appBar: AppBar(
        title: Text(
          "Main Screen",
          style: TextStyle(fontWeight: FontWeight.bold), // ✅ Bold text
        ),
        backgroundColor: Colors.brown, // ✅ Matching app bar color
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to My App",
              style: TextStyle(
                fontSize: 24, // ✅ Bigger text
                fontWeight: FontWeight.bold, // ✅ Bold text
                color: Colors.white, // ✅ White text for contrast
              ),
            ),
            SizedBox(height: 20), // ✅ Space between text & button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()), // ✅ Correct navigation
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown, // ✅ Button color
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), // ✅ Bigger button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // ✅ Rounded corners
                ),
              ),
              child: Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 18, // ✅ Bigger text
                  fontWeight: FontWeight.bold, // ✅ Bold text
                  color: Colors.white, // ✅ White text
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
