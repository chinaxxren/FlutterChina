import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'translate_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TranslatePage(title: 'Flutter Page'),
//      home: ScalePage(title: 'Flutter Page'),
//      home: SkewYPage(title: 'Flutter Page'),
    );
  }
}

class SkewYPage extends StatefulWidget {
  SkewYPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SkewYPageState createState() => _SkewYPageState();
}

class _SkewYPageState extends State<SkewYPage> {
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
            color: Colors.black,
            child: Transform(
              alignment: Alignment.topRight, //相对于坐标系原点的对齐方式
              transform: new Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.deepOrange,
                child: const Text('Apartment for rent!'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
