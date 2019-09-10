import 'package:flutter/material.dart';

import 'tap_boxa.dart';

class StatusPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Status Page1"),
        ),
        body: Center(
          child: Column(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TapBoxA(),
            ],
          ),
        ));
  }
}
