import 'package:flutter/material.dart';

import 'my_drawer.dart';

class TabBarPage extends StatefulWidget {
  TabBarPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<String> _tabs = ["New", "History", "My"];

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: _tabs.length, vsync: this);
    _tabController.addListener(() {
      switch (_tabController.index) {
        case 0:
          print("0");
          break;
        case 1:
          print("1");
          break;
        case 2:
          print("2");
          break;
        case 3:
          print("3");
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBar"),
        bottom: TabBar(
          controller: _tabController,
          tabs: _tabs.map((e) => Tab(text: e)).toList(),
        ),
      ),
      drawer: MyDrawer(),
      body: TabBarView(
          controller: _tabController,
          children: _tabs.map((e) {
            //创建3个Tab页
            return Container(
              alignment: Alignment.center,
              child: Text(e, textScaleFactor: 5),
            );
          }).toList()),
    );
  }
}
