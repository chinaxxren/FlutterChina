import 'package:flutter/material.dart';

class ClipRectPage extends StatefulWidget {
  @override
  _ClipRectPageState createState() => _ClipRectPageState();
}

class _ClipRectPageState extends State<ClipRectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('设置圆角:ClipRRect'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            ///正常
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Center(
                child: ClipRRect(borderRadius: BorderRadius.circular(10), child: Container(width: 300, height: 100, color: Colors.red, child: Center(child: Text('正常圆角')))),
              ),
            ),

            ///上面没有圆角
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Center(
                child: ClipRRect(borderRadius: BorderRadius.circular(10), child: Container(margin: EdgeInsets.only(top: 15), width: 300, height: 100, color: Colors.red, child: Center(child: Text('上边无圆角')))),
              ),
            ),

            ///左边没有圆角
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Center(
                child: ClipRRect(borderRadius: BorderRadius.circular(10), child: Container(margin: EdgeInsets.only(left: 15), width: 300, height: 100, color: Colors.red, child: Center(child: Text('左边无圆角')))),
              ),
            ),

            ///右边没有圆角
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Center(
                child: ClipRRect(borderRadius: BorderRadius.circular(10), child: Container(margin: EdgeInsets.only(right: 15), width: 300, height: 100, color: Colors.red, child: Center(child: Text('右边无圆角')))),
              ),
            ),

            ///下边没有圆角
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Center(
                child: ClipRRect(borderRadius: BorderRadius.circular(10), child: Container(margin: EdgeInsets.only(bottom: 15), width: 300, height: 100, color: Colors.red, child: Center(child: Text('下边无圆角')))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
