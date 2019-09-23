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
        // 该属性表示是否根据子组件的总长度来设置ListView的长度，默认值为false 。默认情况下，
        // ListView的会在滚动方向尽可能多的占用空间。当ListView在一个无边界(滚动方向上)的
        // 容器中时，shrinkWrap必须为true
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
