import 'package:flutter/material.dart';

class BeforeCountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Before Count Page"),
      ),
      body: Center(
        child: Column(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
              onPressed: () => {Navigator.pushNamed(context, "count_route")},
              child: Text("Before Count Page"),
              textColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
