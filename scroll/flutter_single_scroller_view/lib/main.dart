import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SingleChildScrollViewPage(title: 'Flutter Single Child Scroll View'),
    );
  }
}

class SingleChildScrollViewPage extends StatefulWidget {
  SingleChildScrollViewPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SingleChildScrollViewPageState createState() => _SingleChildScrollViewPageState();
}

class _SingleChildScrollViewPageState extends State<SingleChildScrollViewPage> {
  String text = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              //动态创建一个List<Widget>
              children: text
                  .split("")
                  .map(
                    (c) => Text(c, textScaleFactor: 2.0),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
