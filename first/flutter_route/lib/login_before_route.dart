import 'package:flutter/material.dart';

class LoginBeforeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
        child: Text("Login Before Route"),
      ),
    );
  }
}
