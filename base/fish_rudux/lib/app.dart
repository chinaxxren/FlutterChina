import 'package:demo/entrance/page.dart';
import 'package:demo/grid/page.dart';
import 'package:flutter/material.dart';
import 'package:fish_redux/fish_redux.dart';

Widget createApp() {
  final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      "entrance_page": EntrancePage(),
      'grid_page': GridPage(),
    },
  );

  return MaterialApp(
    title: "FishDemo",
    theme: ThemeData(
      primaryColor: Colors.blue,
    ),
    debugShowCheckedModeBanner: false,
    home: routes.buildPage("entrance_page", null),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}
