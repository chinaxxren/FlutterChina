import 'package:flutter/material.dart';

import 'self_state.dart';
import 'parent_state.dart';
import 'mix_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const TapboxA(),
      // home:  ParentWidget(),
      home:  ParentWidgetC(),
    );
  }
}
