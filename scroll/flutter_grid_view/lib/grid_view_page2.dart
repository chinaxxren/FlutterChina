import 'package:flutter/material.dart';

class GridViewPage2 extends StatefulWidget {
  GridViewPage2({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _GridViewPage2State createState() => _GridViewPage2State();
}

class _GridViewPage2State extends State<GridViewPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1.0,
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
