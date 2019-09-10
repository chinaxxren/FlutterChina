import 'package:flutter/material.dart';
import 'package:flutter_route/tip_route.dart';

import 'echo_route.dart';
import 'login_after_route.dart';
import 'login_before_route.dart';
import 'my_home_page.dart';
import 'new_route.dart';
import 'router_test_route.dart';

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
      //名为"/"的路由作为应用的home(首页)
      initialRoute: "/",
      routes: {
        "new_page": (context) => NewRoute(),
        "new_route": (context) => EchoRoute(),
        "login_before": (context) => LoginBeforeRoute(),
        "login_after": (context) => LoginAfterRoute(),
        "tip_route": (context) {
          return TipRoute(text: ModalRoute.of(context).settings.arguments);
        },
        "/": (context) => MyHomePage(title: 'Flutter Demo Home Page'), //注册首页路由
//        "/": RouterTestRoute(),
      },
      /*
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) {
          String routeName = settings.name;
          if (routeName == "login_before") {
            return LoginBeforeRoute();
          } else {
            return LoginAfterRoute();
          }
        });
      },
      */
    );
  }
}
