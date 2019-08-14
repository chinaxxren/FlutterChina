import 'package:flutter/material.dart';

class ListViewPage5 extends StatefulWidget {
  ListViewPage5({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListViewPage5State createState() => _ListViewPage5State();
}

class _ListViewPage5State extends State<ListViewPage5> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          ListTile(title: Text("商品列表")),
          Expanded(
            child: ListView.separated(
              itemCount: 100,
              //列表项构造器
              itemBuilder: (BuildContext context, int index) {
                return ListTile(title: Text("$index"));
              },
              //分割器构造器
              separatorBuilder: (BuildContext context, int index) {
                return Divider(color: Colors.green);
              },
            ),
          ),
        ],
      ),
    );
  }
}
