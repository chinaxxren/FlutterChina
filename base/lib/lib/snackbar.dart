import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("SnackBar"),
      ),
      body: new Center(
        child: new Builder(builder: (BuildContext context) {
          return new RaisedButton(
            onPressed: () {
              //值得注意的是这个context必须不能是Scaffold节点下的context,因为Scaffold.of（）
              // 方法需要从Widget树中去找到Scaffold的Context，所以如果直接在Scaffold中使用showSnackBar，
              // 需要在外城包括上Builder Widget，这个Builder不做任何的其他操作，只不过把Widget树往下移了一层而已。
              Scaffold.of(context).showSnackBar(new SnackBar(
                content: new Text("SanckBar is Showing "),
                action: new SnackBarAction(
                    label: "撤销",
                    onPressed: () {
                      print("点击撤回---------------");
                    }),
              ));
            },
            child: new Text("SnackBar提示"),
            color: Colors.cyan,
            highlightColor: Colors.lightBlueAccent,
            disabledColor: Colors.lightBlueAccent,
          );
        }),
      ),
    );
  }
}

//const SnackBar({
//Key key,
//@required this.content,//内容
//this.backgroundColor,//背景
//this.action,//其他操作
//this.duration: _kSnackBarDisplayDuration,//显示时长
//this.animation,//进出动画
//})
