import 'package:flutter/material.dart';

import 'stack_position_page_1.dart';
import 'stack_position_page_2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home: StackPositionPage1(title: 'Flutter Stack Positioned 1'),
      home: StackPositionPage2(title: 'Flutter Stack Positioned 2'),
    );
  }
}
