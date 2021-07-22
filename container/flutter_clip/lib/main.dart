import 'package:flutter/material.dart';
import 'clip_route.dart';
import 'clip_rect_page.dart';
import 'clip_demo_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ClipDemoRoute(),
      // home: ClipRoute(),
      // home: ClipRectPage(),
    );
  }
}
