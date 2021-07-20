import 'package:flutter/material.dart';
import 'package:flutter_flex_expanded/expanded_demo.dart';
import 'demo_page.dart';
import 'expanded_demo.dart';
import 'flexible_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DemoPage(title: 'Flutter Flex Expanded'),
      // home: ExpandedDemo(),
      // home: FlexibeDemo(),
    );
  }
}
