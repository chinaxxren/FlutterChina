import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("SimpleDialog"),
      ),
      body: new Center(
        child:  new RaisedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  child: new SimpleDialog(
                    title: new Text("标题"),
                    contentPadding: const EdgeInsets.all(10.0),
                    children: <Widget>[    //SimpleDialog内可指定多个children
                      new Text("文字内容1"),
                      new ListTile(
                        leading: new Icon(Icons.android),
                        title: new Text("android"),
                      ),
                      new Text("文字内容2"),
                      new Text("文字内容3"),
                      new Text("文字内容4"),
                    ],
                  ));
            },
            child: new Text("Dialog出来"),
            color: Colors.blue,
            highlightColor: Colors.lightBlueAccent,
            disabledColor: Colors.lightBlueAccent),

      ),
    );
  }
}