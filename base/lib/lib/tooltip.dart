import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tooltips"),
      ),
      body: Center(
        child: Tooltip(
            message: "显示提示内容",//提示的内容
            height: 60.0,//Tooltip的高度
            verticalOffset: 50.0,//具体内部child Widget竖直方向的距离,
            preferBelow:false,//是否显示在下面
            padding: EdgeInsets.all(20.0),//padding
            child: Icon(
              Icons.android,
              size: 50.0,
              color: Colors.green,
            )),
      ),
    );
  }
}
