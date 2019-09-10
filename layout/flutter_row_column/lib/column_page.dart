import 'package:flutter/material.dart';

class ColumnPage extends StatefulWidget {
  ColumnPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ColumnPageState createState() => _ColumnPageState();
}

class _ColumnPageState extends State<ColumnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          verticalDirection: VerticalDirection.up, // 表示Row纵轴（垂直）的对齐方向，默认是VerticalDirection.down，表示从上到下。
          crossAxisAlignment: CrossAxisAlignment.end, // 表示子组件在纵轴方向的对齐方式
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
