import 'package:flutter/material.dart';

class StackPositionPage2 extends StatefulWidget {
  StackPositionPage2({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _StackPositionPage2State createState() => _StackPositionPage2State();
}

class _StackPositionPage2State extends State<StackPositionPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.yellow,
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand, //未定位widget占满Stack整个空间
          children: <Widget>[
            Positioned(
              left: 18.0,
              child: Text("I am Jack", style: TextStyle(color: Colors.white)),
            ),
            Container( //未定位widget占满Stack整个空间
              child: Text("Hello world", style: TextStyle(color: Colors.white)),
              color: Colors.red,
            ),
            Positioned(
              top: 18.0,
              child: Text("Your friend"),
            )
          ],
        ),
      ),
    );
  }
}
