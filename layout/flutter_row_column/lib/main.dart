import 'package:flutter/material.dart';

import 'row_page.dart';
import 'column_page.dart';
import 'row_column_page.dart';
import 'column_page.dart';
import 'custom_page1.dart';
import 'custom_page2.dart';
import 'custom_page3.dart';
import 'custom_page4.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: RowPage(title: 'Flutter Row'),
      // home: RowColumnPage(title: 'Flutter Row Column'),
      // home: ColumnPage(title: 'Flutter Column'),
      // home: CustomPage1(title: 'Flutter Custom'),
      // home: CustomPage2(title: 'Flutter Custom'),
      // home: CustomPage3(title: 'Flutter Custom'),
      home: CustomPage4(title: 'Flutter Custom'),
    );
  }
}
