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
              CircularProgressIndicator(
                value: 0.8, //
                backgroundColor: Colors.green,
                strokeWidth: 10.0,
              ),
              SizedBox(height: 30.0), //设置间隔
              Text("未做任何处理，默认一直循环"),
              CircularProgressIndicator(),

              Text("设置圆环进度颜色为红色"),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.deepOrange),
              ),
            ],
          )),
    );
  }
}

//const CircularProgressIndicator({
//Key key,
//double value,  //进度（0-1）之间，不设置进度会一直循环
//Color backgroundColor,
//Animation<Color> valueColor, //圆环进度颜色
//this.strokeWidth = 4.0, //圆环进度条宽度
//String semanticsLabel,
//String semanticsValue,
//})
