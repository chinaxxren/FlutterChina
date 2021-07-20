import 'package:flutter/material.dart';

class StackPositionPage1 extends StatefulWidget {
  StackPositionPage1({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _StackPositionPage1State createState() => _StackPositionPage1State();
}

class _StackPositionPage1State extends State<StackPositionPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ConstrainedBox(
          //通过ConstrainedBox来确保Stack占满屏幕
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  "Hello Wold",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
              ),
              Positioned(
                left: 18.0,
                child: Text("I'm Jack"),
              ),
              Positioned(
                top: 20.0,
                child: Text("Your friends"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
