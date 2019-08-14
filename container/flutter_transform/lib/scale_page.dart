import 'package:flutter/material.dart';
import 'dart:math' as math;

class ScalePage extends StatefulWidget {
  ScalePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ScalePageState createState() => _ScalePageState();
}

class _ScalePageState extends State<ScalePage> {
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
              child: Transform.scale(
                scale: 1.5, //放大到1.5倍
                child: Text("Hello world"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
