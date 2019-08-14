import 'package:flutter/material.dart';

class AlignFramePage extends StatefulWidget {
  final String title;

  AlignFramePage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AlignFramePageState();
}

class _AlignFramePageState extends State<AlignFramePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        height: 120,
        width: 120,
        color: Colors.blue[50],
        child: Align(
          alignment: Alignment.topRight, // 右上角 static const Alignment topRight = Alignment(1.0, -1.0);
          child: FlutterLogo(
            size: 60,
          ),
        ),
      ),
    );
  }
}
