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
      home: MyHomePage(title: 'Flutter Stack Positioned'),
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
        child: ConstrainedBox(
          //通过ConstrainedBox来确保Stack占满屏幕
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  "Hello Wold",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
              ),
              Positioned(
                left: 18.0,
                child: Text("I'm Jack"),
              ),
              Positioned(
                top: 18.0,
                child: Text("Your friends"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        height: 300,
        width: 300,
        color: Colors.amber,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              child: Text(
                "Hello Wold",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
            ),
            Positioned(
              left: 18.0,
              child: Text("I'm Jack"),
            ),
            Positioned(
              top: 18.0,
              child: Text("Your friends"),
            ),
          ],
        ),
      ),
    );
  }
}
*/
