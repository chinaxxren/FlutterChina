import 'package:flutter/material.dart';

class ListViewPage1 extends StatefulWidget {
  ListViewPage1({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListViewPage1State createState() => _ListViewPage1State();
}

class _ListViewPage1State extends State<ListViewPage1> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          const Text('I\'m dedicating every day to you'),
          const Text('Domestic life was never quite my style'),
          const Text('When you smile, you knock me out, I fall apart'),
          const Text('And I thought I was so smart'),
        ],
      ),
    );
  }
}
