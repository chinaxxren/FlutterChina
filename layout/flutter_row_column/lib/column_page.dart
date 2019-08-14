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
          mainAxisAlignment: MainAxisAlignment.start,
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
