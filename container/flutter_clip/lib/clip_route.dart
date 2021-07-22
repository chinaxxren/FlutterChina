import 'package:flutter/material.dart';

class ClipRoute extends StatefulWidget {
  ClipRoute({Key key}) : super(key: key);

  @override
  _ClipRouteState createState() => _ClipRouteState();
}

class _ClipRouteState extends State<ClipRoute> {
  @override
  Widget build(BuildContext context) {
    Widget avator = Image.asset('images/avatar.png', fit: BoxFit.fill);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('ClipRoute'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: 60,
              height: 60,
              child: ClipOval(
                child: avator,
              ),
            ),
            ClipOval(
              child: avator,
              clipper: MyClipper(),
            ),
            ClipRRect(
              child: avator,
              borderRadius: BorderRadius.circular(10),
            ),
            ClipRect(
              child: avator,
            )
          ],
        ));
  }
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return new Rect.fromLTRB(10.0, 10.0, size.width - 10.0, size.height - 10.0);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}
