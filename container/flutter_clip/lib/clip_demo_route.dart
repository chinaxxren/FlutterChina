import 'package:flutter/material.dart';

class ClipDemoRoute extends StatefulWidget {
  ClipDemoRoute({Key key}) : super(key: key);

  @override
  _ClipDemoRouteState createState() => _ClipDemoRouteState();
}

class _ClipDemoRouteState extends State {
  @override
  Widget build(BuildContext context) {
    Image localImage = Image.asset('images/task.png', fit: BoxFit.fill);
    Image netImage = Image.network('https://images.unsplash.com/photo-1600173300839-55c4e3ed367b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', fit: BoxFit.fill);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('ClipRoute'),
      ),
      body: Center(
        child: ClipOval(
          child: Container(
            width: 140,
            height: 140,
            color: Colors.green,
            child: localImage,
            // child: netImage,
          ),
        ),
      ),
    );
  }
}
