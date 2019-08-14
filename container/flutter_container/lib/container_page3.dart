import 'package:flutter/material.dart';

class ContainerPage3 extends StatefulWidget {
  ContainerPage3({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ContainerPage3State createState() => _ContainerPage3State();
}

class _ContainerPage3State extends State<ContainerPage3> {
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
            padding: EdgeInsets.all(20.0), //容器内补白
            color: Colors.orange,
            child: Text("Hello world!"),
          ),
        ),
      ),
    );
  }
}
