import 'package:flutter/material.dart';

import 'new_route.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              child: Text("open new route 1"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.push(context,
                    // builder 是一个WidgetBuilder类型的回调函数，它的作用是构建路由页面的具体内容，返回值是一个widget。我们通常要实现此回调，返回新路由的实例。
                    // settings 包含路由的配置信息，如路由名称、是否初始路由（首页）。
                    // maintainState：默认情况下，当入栈一个新路由时，原来的路由仍然会被保存在内存中，如果想在路由没用的时候释放其所占用的所有资源，可以设置maintainState为false。
                    // fullscreenDialog表示新的路由页面是否是一个全屏的模态对话框，在iOS中，如果fullscreenDialog为true，新页面将会从屏幕底部滑入（而不是水平方向）。
                    MaterialPageRoute(builder: (context) {
                  return NewRoute();
                }));
              },
            ),
            FlatButton(
              child: Text("open new route 2"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "new_page");
              },
            ),
            FlatButton(
              child: Text("open new route 3"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.of(context).pushNamed("new_route", arguments: "hi");
              },
            ),
            FlatButton(
              child: Text("open new route 4"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.of(context).pushNamed("tip_route", arguments: "hi");
              },
            ),
            FlatButton(
              child: Text("open new route 5"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.of(context).pushNamed("tip_route", arguments: "hi");
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
