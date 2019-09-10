import 'package:flutter/material.dart';

class AlignFactorPage extends StatefulWidget {
  final String title;

  AlignFactorPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AlignFactorPageState();
}

class _AlignFactorPageState extends State<AlignFactorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.blue[50],
        child: Align(
          heightFactor: 2,
          widthFactor: 2,
          alignment: Alignment.topRight,
          child: FlutterLogo(
            size: 60,
          ),
        ),
      ),
    );
  }
}
