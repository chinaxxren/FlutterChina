import 'package:flutter/material.dart';

class EchoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Echo Page"),
      ),
      body: Center(
        child: Text("Echo Text"),
      ),
    );
  }
}
