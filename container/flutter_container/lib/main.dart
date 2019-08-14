import 'package:flutter/material.dart';
import 'container_page1.dart';
import 'container_page2.dart';
import 'container_page3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContainerPage3(title: 'Flutter Demo'),
    );
  }
}
