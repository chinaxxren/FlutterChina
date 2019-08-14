import 'package:flutter/material.dart';

class PaddingDemo1 extends StatefulWidget {
  PaddingDemo1({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PaddingDemo1State createState() => _PaddingDemo1State();
}

class _PaddingDemo1State extends State<PaddingDemo1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.yellow,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
