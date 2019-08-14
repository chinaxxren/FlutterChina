import 'package:flutter/material.dart';

import 'grid_view_page1.dart';
import 'grid_view_page2.dart';
import 'grid_view_page3.dart';
import 'grid_view_page4.dart';
import 'grid_view_page5.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home: GridViewPage1(title: 'Flutter Demo'),
//      home: GridViewPage2(title: 'Flutter Demo'),
//      home: GridViewPage3(title: 'Flutter Demo'),
//      home: GridViewPage4(title: 'Flutter Demo'),
      home: GridViewPage5(title: 'Flutter Demo'),
    );
  }
}
