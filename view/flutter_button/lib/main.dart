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
              RaisedButton.icon(
                icon: Icon(Icons.send),
                label: Text("发送"),
                onPressed: () => {print("发送")},
              ),
              OutlineButton.icon(
                icon: Icon(Icons.add),
                label: Text("添加"),
                onPressed: () => {print("添加")},
              ),
              FlatButton.icon(
                icon: Icon(Icons.info),
                label: Text("详情"),
                onPressed: () => {print("详情")},
              ),
              FlatButton(
                child: Text("Submit"),
                color: Colors.blue,
                highlightColor: Colors.blue[700],
                splashColor: Colors.grey,
                colorBrightness: Brightness.dark,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                onPressed: () => {print("Submit Button")},
              ),
              RaisedButton(
                child: Text("Submit"),
                color: Colors.blue,
                highlightColor: Colors.blue[700],
                splashColor: Colors.grey,
                colorBrightness: Brightness.dark,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                onPressed: () => {print("Submit Button")},
              ),
            ],
          ),
        ));
  }
}
