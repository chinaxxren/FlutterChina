import 'package:flutter/material.dart';

class PaddingDemo2 extends StatefulWidget {
  PaddingDemo2({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PaddingDemo2State createState() => _PaddingDemo2State();
}

class _PaddingDemo2State extends State<PaddingDemo2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0), //上下左右各添加16像素补白
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //显式指定对齐方式为左对齐，排除对齐干扰
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0), //左边添加8像素补白
              child: Text("Hello world"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0), //上下各添加8像素补白
              child: Text("I am Jack"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, .0, 20.0, 20.0), // 分别指定四个方向的补白
              child: Text("Your friend"),
            )
          ],
        ),
      ),
    );
  }
}
