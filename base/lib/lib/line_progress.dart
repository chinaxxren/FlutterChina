import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new FlutterDemo()));
}

class FlutterDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter进阶之旅"),
      ),
      body: new Center(
          child: new Column(
            children: <Widget>[
              SizedBox(height: 30.0),
              Text("设置进度比为80%(0.8)"),
              SizedBox(height: 30.0),
              LinearProgressIndicator(
                value: 0.8, //
                backgroundColor: Colors.green,
              ),
              SizedBox(height: 30.0), //设置间隔
              Text("未做任何处理，默认一直循环"),
              LinearProgressIndicator(),

              Text("设置进度颜色为红色,背景透明"),
              LinearProgressIndicator(
                backgroundColor: Colors.transparent,
                valueColor: AlwaysStoppedAnimation(Colors.deepOrange),
              ),
            ],
          )),
    );
  }
}