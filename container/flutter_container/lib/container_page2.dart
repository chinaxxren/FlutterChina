import 'package:flutter/material.dart';

class ContainerPage2 extends StatefulWidget {
  ContainerPage2({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ContainerPage2State createState() => _ContainerPage2State();
}

class _ContainerPage2State extends State<ContainerPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          child: Container(
            margin: EdgeInsets.all(20.0), //容器外补白
            color: Colors.orange,
            child: Text("Hello world!"),
          ),
        ),
      ),
    );
  }
}
