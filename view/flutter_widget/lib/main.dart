import 'package:flutter/material.dart';
import 'package:flutter_widget/tap_boxa.dart';
import 'package:flutter_widget/parent_widget.dart';
import 'package:flutter_widget/parent_widgetc.dart';

import 'before_count_page.dart';
import 'count_page.dart';
import 'echo_page.dart';
import 'status_page1.dart';
import 'status_page2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "count_route": (context) => CountPage(initValue: 123, title: 'Count Page'),
      },
//      home: EchoPage(),
//      home: BeforeCountPage(),
//      home: StatusPage1(),
      home: StatusPage2(),
    );
  }
}
