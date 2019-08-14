import 'package:flutter/material.dart';

class TranslatePage extends StatefulWidget {
  TranslatePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TranslatePageState createState() => _TranslatePageState();
}

class _TranslatePageState extends State<TranslatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              //默认原点为左上角，左移20像素，向上平移5像素
              child: Transform.translate(
                offset: Offset(-20.0, -5.0),
                child: Text("Hello world"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
