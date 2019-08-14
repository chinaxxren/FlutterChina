import 'package:flutter/material.dart';

import 'row_page.dart';
import 'column_page.dart';
import 'row_column_page.dart';
import 'column_page.dart';
import 'custom_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home: ColumnPage(title: 'Flutter Column'),
//      home: RowPage(title: 'Flutter Row'),
//      home: RowColumnPage(title: 'Flutter Row Column'),
      home: CustomPage(title: 'Flutter Custom'),
    );
  }
}
