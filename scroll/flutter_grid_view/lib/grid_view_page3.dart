import 'package:flutter/material.dart';

class GridViewPage3 extends StatefulWidget {
  GridViewPage3({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _GridViewPage3State createState() => _GridViewPage3State();
}

class _GridViewPage3State extends State<GridViewPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 120.0,
          childAspectRatio: 2.0,
        ), //宽高比为2
        children: <Widget>[
          Icon(Icons.ac_unit),
          Icon(Icons.airport_shuttle),
          Icon(Icons.all_inclusive),
          Icon(Icons.beach_access),
          Icon(Icons.cake),
          Icon(Icons.free_breakfast),
        ],
      ),
    );
  }
}
