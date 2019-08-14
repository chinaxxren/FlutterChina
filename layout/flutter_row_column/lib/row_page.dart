import 'package:flutter/material.dart';

class RowPage extends StatefulWidget {
  RowPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RowPageState createState() => _RowPageState();
}

class _RowPageState extends State<RowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          textDirection: TextDirection.ltr, // 布局顺序(是从左往右还是从右往左) (1)
          mainAxisAlignment: MainAxisAlignment.end, // 水平空间内对齐方式 当前TextDirection的方向的相对点的start和end(2)
          children: <Widget>[
            Text(
              'button 1',
            ),
            Text(
              'button 2',
            ),
            Text(
              'button 3',
            ),
            Text(
              'button 4',
            ),
          ],
        ),
      ),
    );
  }
}
