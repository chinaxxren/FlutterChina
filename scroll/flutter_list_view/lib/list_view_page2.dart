import 'package:flutter/material.dart';

class ListViewPage2 extends StatefulWidget {
  ListViewPage2({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListViewPage2State createState() => _ListViewPage2State();
}

class _ListViewPage2State extends State<ListViewPage2> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: 100,
          itemExtent: 50.0, // 强制Item高度为50.0
          itemBuilder: (BuildContext context, int index) {
            return ListTile(title: Text("$index"));
          }),
    );
  }
}
