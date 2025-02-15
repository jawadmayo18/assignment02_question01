import 'package:flutter/material.dart';

class AccountCreatedScreen extends StatelessWidget {
  final String username;

  AccountCreatedScreen(this.username);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Account Created")),
      body: Center(
        child: Text(
          "Account Created Successfully for $username!",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
