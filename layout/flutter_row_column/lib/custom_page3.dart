import 'package:flutter/material.dart';

class CustomPage3 extends StatefulWidget {
  CustomPage3({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CustomPage3State createState() => _CustomPage3State();
}

class _CustomPage3State extends State<CustomPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max, //有效，外层Colum高度为整个屏幕
            children: <Widget>[
              Container(
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("hello world "),
                    Text("I am Jack "),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
