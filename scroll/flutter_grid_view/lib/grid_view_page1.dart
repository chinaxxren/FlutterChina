import 'package:flutter/material.dart';

class GridViewPage1 extends StatefulWidget {
  GridViewPage1({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _GridViewPage1State createState() => _GridViewPage1State();
}

class _GridViewPage1State extends State<GridViewPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, //横轴三个子widget
              childAspectRatio: 1.0 //宽高比为1时，子widget
              ),
          children: <Widget>[
            Icon(Icons.ac_unit),
            Icon(Icons.airport_shuttle),
            Icon(Icons.all_inclusive),
            Icon(Icons.beach_access),
            Icon(Icons.cake),
            Icon(Icons.free_breakfast)
          ]),
    );
  }
}
