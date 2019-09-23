import 'package:flutter/material.dart';
import 'constrainted_box1.dart';
import 'constrainted_box2.dart';
import 'constrainted_box3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ConstraintedBox1(title: 'Flutter ConstraintedBox'),
//      home: ConstraintedBox2(title: 'Flutter SizeBox'),
//      home: ConstraintedBox3(title: 'Flutter ConstraintedBoxTest'),
    );
  }
}
