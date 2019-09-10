// 此行代码作用是导入了Material UI组件库。
// Material是一种标准的移动端和web端的视觉设计语言，
// Flutter默认提供了一套丰富的Material风格的UI组件
import 'package:flutter/material.dart';

// 应用入口。
// Flutter 应用中main函数为应用程序的入口。main函数中调用了runApp 方法，
// 它的功能是启动Flutter应用。runApp它接受一个Widget参数，
// 在本示例中它是一个MyApp对象，MyApp()是Flutter应用的根组件
// main函数使用了(=>)符号，这是Dart中单行函数或方法的简写
void main() => runApp(MyApp());

/*
MyApp类代表Flutter应用，它继承了 StatelessWidget类，这也就意味着应用本身也是一个widget。
在Flutter中，大多数东西都是widget（后同“组件”或“部件”），包括对齐(alignment)、
填充(padding)和布局(layout)等，它们都是以widget的形式提供
*/
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // MaterialApp 是Material库中提供的Flutter APP框架，
    // 通过它可以设置应用的名称、主题、语言、首页及路由列表等。
    // MaterialApp也是一个widget
    return MaterialApp(
      // 应用名称
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // 蓝色主题
        primarySwatch: Colors.blue,
      ),

      // 应用首页路由
      // home 为Flutter应用的首页，它也是一个widget。
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// Stateful widget可以拥有状态，这些状态在widget生命周期中是可以变的，而Stateless widget是不可变的
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // 该组件的状态。由于我们只需要维护一个点击次数计数器
  int _counter = 0;

  // 设置状态的自增函数。
  // 该函数的作用是先自增_counter，然后调用setState 方法。
  // setState方法的作用是通知Flutter框架，有状态发生了改变，
  // Flutter框架收到通知后，会执行build方法来根据新的状态重新构建界面，
  // Flutter 对此方法做了优化，使重新执行变的很快，所以你可以重新构建
  // 任何需要更新的东西，而无需分别去修改各个widget。
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Flutter在构建页面时，会调用组件的build方法，widget的主要工作是提供
  // 一个build()方法来描述如何构建UI界面（通常是通过组合、拼装其它基础widget）
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    // Scaffold 是Material库中提供的页面脚手架，
    // Scaffold 是 Material组件库中提供的一个组件，它提供了默认的导航栏、
    // 标题和包含主屏幕widget树（后同“组件树”或“部件树”）的body属性。组件树可以很复杂
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
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
