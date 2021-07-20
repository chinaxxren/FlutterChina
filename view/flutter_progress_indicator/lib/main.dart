import 'package:flutter/material.dart';
import 'progress_indicator_page.dart';
import 'progress_animate_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: ProgressIndicatorPage(),
      home: ProgressAnimatePage(),
    );
  }
}
