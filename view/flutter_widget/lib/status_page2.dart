import 'package:flutter/material.dart';
import 'package:flutter_widget/parent_widgetc.dart';

class StatusPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Status Page2"),
        ),
        body: Center(
          child: Column(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ParentWidgetC(),
            ],
          ),
        ));
  }
}
