import 'package:flutter/material.dart';
import 'dart:math' as math;

class RotatePage extends StatefulWidget {
  RotatePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RotatePageState createState() => _RotatePageState();
}

class _RotatePageState extends State<RotatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: Transform.rotate(
                //旋转90度
                angle: math.pi / 2,
                child: Text("Hello world"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
