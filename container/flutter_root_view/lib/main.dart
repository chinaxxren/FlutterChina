import 'package:flutter/material.dart';
import 'bottom_nav_bar_page.dart';
import 'tab_bar_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: BottomNavBarPage(title: 'Flutter Demo'),
      home: TabBarPage(title: 'Flutter Demo'),
    );
  }
}
