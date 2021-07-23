import 'package:flutter/material.dart';

class ListViewPage3 extends StatefulWidget {
  ListViewPage3({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListViewPage3State createState() => _ListViewPage3State();
}

class _ListViewPage3State extends State<ListViewPage3> {
  //下划线widget预定义以供复用。
  Widget divider1 = Divider(color: Colors.blue);
  Widget divider2 = Divider(color: Colors.green);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: ListView.separated(
        itemCount: 100,
        //列表项构造器
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text("$index"));
        },
        //分割器构造器
        separatorBuilder: (BuildContext context, int index) {
          return index % 2 == 0 ? divider1 : divider2;
        },
      ),
    );
  }
}
