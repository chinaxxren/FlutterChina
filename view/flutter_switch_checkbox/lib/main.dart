import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      theme: ThemeData(primaryColor: Colors.blue),
      home: MyHomePage(title: "Flutter Switch Checkbox"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _switchSelected = true;
  bool _checkboxSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Switch(
              value: _switchSelected,
              onChanged: (value) {
                setState(() {
                  _switchSelected = value;
                  print(value);
                });
              },
            ),
            Checkbox(
              value: _checkboxSelected,
              onChanged: (value) {
                setState(() {
                  _checkboxSelected = value;
                  print(value);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
