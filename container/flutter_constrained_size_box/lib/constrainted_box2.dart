import 'package:flutter/material.dart';

class ConstraintedBox2 extends StatefulWidget {
  ConstraintedBox2({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ConstraintedBox2State createState() => _ConstraintedBox2State();
}

class _ConstraintedBox2State extends State<ConstraintedBox2> {
  Widget redBox = DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              width: 80,
              height: 80,
              child: redBox,
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 80, height: 80),
              child: redBox,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 80,
                minWidth: 80,
                maxWidth: 80,
                maxHeight: 80,
              ),
              child: redBox,
            ),
          ],
        ),
      ),
    );
  }
}
