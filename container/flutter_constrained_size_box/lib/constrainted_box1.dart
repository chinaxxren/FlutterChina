import 'package:flutter/material.dart';

class ConstraintedBox1 extends StatefulWidget {
  ConstraintedBox1({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ConstraintedBox1State createState() => _ConstraintedBox1State();
}

class _ConstraintedBox1State extends State<ConstraintedBox1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: double.infinity,
          minHeight: 50,
        ),
        child: Container(
          height: 5.0,
          decoration: BoxDecoration(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
