import 'package:flutter/material.dart';

import 'list_view_page1.dart';
import 'list_view_page2.dart';
import 'list_view_page3.dart';
import 'list_view_page4.dart';
import 'list_view_page5.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: ListViewPage1(title: 'Flutter List View'),
      // home: ListViewPage2(title: 'Flutter List View'),
      // home: ListViewPage3(title: 'Flutter List View'),
      // home: ListViewPage4(title: 'Flutter List View'),
      home: ListViewPage5(title: 'Flutter List View'),
    );
  }
}
