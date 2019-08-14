import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Text'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                child: Text("normal"),
                onPressed: () => {print("Raised Button")},
              ),
              FlatButton(
                child: Text("normal"),
                onPressed: () => {print("Flat Button")},
              ),
              OutlineButton(
                child: Text("normal"),
                onPressed: () => {print("Outline Button")},
              ),
              IconButton(
                icon: Icon(Icons.thumb_up),
                onPressed: () => {print("Icon Button")},
              ),
              FlatButton(
                child: Text("Submit"),
                color: Colors.blue,
                highlightColor: Colors.blue[700],
                splashColor: Colors.grey,
                colorBrightness: Brightness.dark,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                onPressed: () => {print("Submit Button")},
              ),
              RaisedButton(
                child: Text("Submit"),
                color: Colors.blue,
                highlightColor: Colors.blue[700],
                splashColor: Colors.grey,
                colorBrightness: Brightness.dark,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                onPressed: () => {print("Submit Button")},
              ),
            ],
          ),
        ));
  }
}
