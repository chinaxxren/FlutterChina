import 'package:flutter/material.dart';
import 'padding_demo1.dart';
import 'padding_demo2.dart';

void main() => runApp(PaddingApp());

class PaddingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Padding',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home: PaddingDemo1(title: "Padding Demo 1"),
      home: PaddingDemo2(title: "Padding Demo 2"),
    );
  }
}
