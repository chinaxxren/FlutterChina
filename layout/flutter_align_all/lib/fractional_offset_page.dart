import 'package:flutter/material.dart';

class FractionalOffsetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FractionalOffset Page"),
      ),
      body: Container(
        height: 120.0,
        width: 120.0,
        color: Colors.blue[50],
        child: Align(
          alignment: FractionalOffset(1, 1),
          child: FlutterLogo(
            size: 60,
          ),
        ),
      ),
    );
  }
}
