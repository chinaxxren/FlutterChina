import 'package:flutter/material.dart';

class CustomPage4 extends StatefulWidget {
  CustomPage4({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CustomPage4State createState() => _CustomPage4State();
}

class _CustomPage4State extends State<CustomPage4> {
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
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: Column(
                    //最终的宽高是children的最终总和
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("hello world "),
                      Text("I am Jack "),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
