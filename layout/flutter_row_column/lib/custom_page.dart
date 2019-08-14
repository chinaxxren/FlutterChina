import 'package:flutter/material.dart';

class CustomPage extends StatefulWidget {
  CustomPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CustomPageState createState() => _CustomPageState();
}

class _CustomPageState extends State<CustomPage> {
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
                  child: Column( //最终的宽高是children的最终总和
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

/*
class _CustomPageState extends State<CustomPage> {
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
*/
