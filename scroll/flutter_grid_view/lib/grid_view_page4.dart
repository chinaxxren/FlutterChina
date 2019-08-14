import 'package:flutter/material.dart';

class GridViewPage4 extends StatefulWidget {
  GridViewPage4({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _GridViewPage4State createState() => _GridViewPage4State();
}

class _GridViewPage4State extends State<GridViewPage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 120.0,
        childAspectRatio: 2.0,
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
