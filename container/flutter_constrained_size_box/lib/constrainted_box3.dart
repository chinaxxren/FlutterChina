import 'package:flutter/material.dart';

class ConstraintedBox3 extends StatefulWidget {
  ConstraintedBox3({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ConstraintedBox3State createState() => _ConstraintedBox3State();
}

class _ConstraintedBox3State extends State<ConstraintedBox3> {
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
            ConstrainedBox(
              constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0), //子
                child: redBox,
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0),
                child: redBox,
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(minWidth: 60.0, minHeight: 100.0),
              //父
              child: UnconstrainedBox(
                //“去除”父级限制
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0), //子
                  child: redBox,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
