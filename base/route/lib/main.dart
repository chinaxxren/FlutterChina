import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Route Title",
      theme: ThemeData(primaryColor: Colors.blue),
      home: MyHomePage(title: "Flutter Route"),
      routes: {
        "new_route": (context) => NewRoute(),
        "echo_route": (context) => EchoRoute(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

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
            Text("You have push the button this many times"),
            Text('$_counter', style: Theme.of(context).textTheme.bodyText1),
            TextButton(
              child: Text("New Route"),
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 14)),
                foregroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "new_route");
//                Navigator.push(context,
//                    new MaterialPageRoute(builder: (context) {
//                  return new NewRoute();
//                }));
              },
            ),
            TextButton(
              child: Text("Echo Route"),
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 14)),
                foregroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "echo_route");
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: "Increment",
        child: Icon(Icons.add),
      ),
    );
  }
}

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Route"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            TextButton(
              child: Text("Pop View"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: Text("Push View"),
              onPressed: () {
                // var routeSettings = RouteSettings();
                // var copyWithSettings = routeSettings.copyWith(arguments: "传入字符串 Echo");
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) {
                //         return EchoRoute();
                //       },
                //       settings: copyWithSettings,
                //     ));
                Navigator.pushNamed(context, "echo_route", arguments: "show echo");
              },
            )
          ],
        ),
    );
  }
}

class EchoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var passValue = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Echo Route"),
      ),
      body: Center(
        child: Text(passValue),
      ),
    );
  }
}
