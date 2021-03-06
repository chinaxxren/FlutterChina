import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("BottomSheet"),
      ),
      body: new Column(
        children: <Widget>[
          new Builder(builder: (BuildContext context){
            return new RaisedButton(
              onPressed: () {
                showBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return new Container(
                        child: new Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: new Column(
                            children: <Widget>[
                              new ListTile(
                                leading: new Icon(Icons.chat),
                                title: new Text("对话框列表1"),
                              ),
                              new ListTile(
                                leading: new Icon(Icons.help),
                                title: new Text("对话框列表2"),
                              ),
                              new ListTile(
                                leading: new Icon(Icons.settings),
                                title: new Text("对话框列表3"),
                              ),
                              new ListTile(
                                leading: new Icon(Icons.more),
                                title: new Text("对话框列表4"),
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: new Text("BottomSheet"),
            );
          }),


          //showModalBottomSheet与BottomSheet的区别是 BottomSheet充满屏幕，ModalBottomSheet半屏
          new RaisedButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return new Container(
                      child: new Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: new Column(
                          children: <Widget>[
                            new ListTile(
                              leading: new Icon(Icons.chat),
                              title: new Text("对话框列表1"),
                            ),
                            new ListTile(
                              leading: new Icon(Icons.help),
                              title: new Text("对话框列表2"),
                            ),
                            new ListTile(
                              leading: new Icon(Icons.settings),
                              title: new Text("对话框列表3"),
                            ),
                            new ListTile(
                              leading: new Icon(Icons.more),
                              title: new Text("对话框列表4"),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            },
            child: new Text("ModalBottomSheet"),
          ),
        ],
      ),
    );
  }
}