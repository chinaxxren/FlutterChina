import 'package:flutter/material.dart';

import 'custom_field_page.dart';
import 'focus_test_page.dart';
import 'form_field_page.dart';
import 'text_field_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      theme: ThemeData(primaryColor: Colors.blue),
      // home: TextFieldPage(),
      // home: FocusTestPage(),
      // home: CustomFieldPage(),
      home: FormFieldPage(),
    );
  }
}
