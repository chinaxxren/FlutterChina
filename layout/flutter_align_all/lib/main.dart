import 'package:flutter/material.dart';

import 'align_factor_page.dart';
import 'align_frame_page.dart';
import 'fractional_offset_page.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home: AlignFramePage(title: "Align Demo"),
//      home: AlignFactorPage(title: "Align Factor Demo"),
      home: FractionalOffsetPage(),
    );
  }
}
