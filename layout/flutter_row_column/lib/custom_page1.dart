import 'package:flutter/material.dart';

class CustomPage1 extends StatefulWidget {
  CustomPage1({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CustomPage1State createState() => _CustomPage1State();
}

class _CustomPage1State extends State<CustomPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("hi"),
          Text("world"),
        ],
      ),
    );
  }
}
