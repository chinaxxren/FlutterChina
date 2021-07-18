import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

enum Actions {
  Increase,
}

int mainReducer(int state, dynamic action) {
  if (Actions.Increase == action) {
    return state + 1;
  }

  return state;
}

void main() {
  Store<int> store = new Store(mainReducer, initialState: 0);
  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  final Store<int> store;

  MyApp({this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
        store: store,
        child: MaterialApp(
          title: 'Flutter Redux',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: StoreConnector(builder: (BuildContext context, int counter) {
            return MyHomePage(title: 'Flutter Redux', counter: counter);
          }, converter: (Store<int> store) {
            return store.state;
          }),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title, this.counter}) : super(key: key);

  final String title;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: new StoreConnector<int, VoidCallback>(
          builder: (BuildContext context, VoidCallback callback) {
        return new FloatingActionButton(
          onPressed: callback,
          tooltip: 'Increment',
          child: new Icon(Icons.add),
        );
      }, converter: (Store<int> store) {
        return () => store.dispatch(Actions.Increase);
      }),
    );
  }
}
