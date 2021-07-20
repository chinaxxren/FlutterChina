import 'package:flutter/material.dart';
import 'package:flutter_flex_expanded/expanded_demo.dart';
import 'expanded_page.dart';
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
      // home: ExpandedPage(title: 'Flutter Flex Expanded'),
      home: ExpandedDemo(),
      // home: FlexibeDemo(),
    );
  }
}
