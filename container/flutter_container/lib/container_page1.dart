import 'package:flutter/material.dart';

class ContainerPage1 extends StatefulWidget {
  ContainerPage1({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ContainerPage1State createState() => _ContainerPage1State();
}

class _ContainerPage1State extends State<ContainerPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          //容器外填充
          margin: EdgeInsets.only(top: 50.0, left: 120.0),
          //卡片大小
          constraints: BoxConstraints.tightFor(width: 200.0, height: 150.0),
          decoration: BoxDecoration(
              gradient: RadialGradient(colors: [Colors.red, Colors.orange], center: Alignment.topLeft, radius: .98),
              boxShadow: [
                BoxShadow(color: Colors.black54, offset: Offset(2.0, 2.0), blurRadius: 4.0), //卡片阴影
              ]),
          //卡片倾斜变换
          transform: Matrix4.rotationZ(.2),
          //卡片内文字居中
          alignment: Alignment.center,
          //卡片文字
          child: Text(
            "5.20",
            style: TextStyle(color: Colors.white, fontSize: 40.0),
          ),
        ),
      ),
    );
  }
}
