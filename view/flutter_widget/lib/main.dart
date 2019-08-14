import 'package:flutter/material.dart';
import 'package:flutter_widget/TapBoxA.dart';
import 'package:flutter_widget/ParentWidget.dart';
import 'package:flutter_widget/ParentWidgetC.dart';

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
      routes: {
        "count_route": (context) =>
            CountPage(initValue: 123, title: 'Count Page'),
      },
      home: EchoPage(),
    );
  }
}

class EchoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Echo Page"),
        ),
        body: Center(
            child: Column(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
//                FlatButton(
//                  onPressed: () =>
//                  {
//                  Navigator.pushNamed(context, "count_route")
//                  },
//                  child: Text("Count Page"),
//                  textColor: Colors.red,
//                ),
//                TapBoxA(),
//                ParentWidget(),
                ParentWidgetC(),
              ],
            ) ,
        )
    );
  }
}

class CountPage extends StatefulWidget {
  final int initValue;
  final String title;

  CountPage({Key key, this.initValue: 0, this.title}) : super(key: key);

  @override
  _CountPageState createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    //初始化状态
    _counter = widget.initValue;
    print("initState");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme
                  .of(context)
                  .textTheme
                  .display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void didUpdateWidget(CountPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactive");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }
}
