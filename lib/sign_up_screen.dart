import 'package:flutter/material.dart';
import 'account_created_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  String username = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal, // ✅ Background color
      appBar: AppBar(
        title: Text(
          "Sign Up",
          style: TextStyle(fontWeight: FontWeight.bold), // ✅ Bold title
        ),
        backgroundColor: Colors.brown, // ✅ Matching app bar color
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)), // ✅ Rounded corners
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Create an Account",
                      style: TextStyle(
                        fontSize: 22, // ✅ Bigger text
                        fontWeight: FontWeight.bold, // ✅ Bold text
                        color: Colors.brown,
                      ),
                    ),
                    SizedBox(height: 20), // ✅ Space added
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Username",
                        labelStyle: TextStyle(fontWeight: FontWeight.bold), // ✅ Bold label
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)), // ✅ Rounded border
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) return "Enter a username";
                        return null;
                      },
                      onSaved: (value) {
                        username = value!;
                      },
                    ),
                    SizedBox(height: 15), // ✅ Space added
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(fontWeight: FontWeight.bold), // ✅ Bold label
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)), // ✅ Rounded border
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) return "Enter a password";
                        return null;
                      },
                      onSaved: (value) {
                        password = value!;
                      },
                    ),
                    SizedBox(height: 20), // ✅ Space added
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AccountCreatedScreen(username), // ✅ Correct navigation
                            ),
                          );
                        }
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
            ),
          ),
        ),
      ),
    );
  }
}
