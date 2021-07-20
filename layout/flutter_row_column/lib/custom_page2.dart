import 'package:flutter/material.dart';

class CustomPage2 extends StatefulWidget {
  CustomPage2({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CustomPage2State createState() => _CustomPage2State();
}

class _CustomPage2State extends State<CustomPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(minWidth: double.infinity),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("hi"),
            Text("world"),
          ],
        ),
      ),
    );
  }
}
