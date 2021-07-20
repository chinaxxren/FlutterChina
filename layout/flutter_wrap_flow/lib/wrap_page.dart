import 'package:flutter/material.dart';

class WrapPage extends StatefulWidget {
  WrapPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WrapPageState createState() => _WrapPageState();
}

class _WrapPageState extends State<WrapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Wrap(
        spacing: 8.0,
        runSpacing: 4.0,
        alignment: WrapAlignment.center,
        children: <Widget>[
          // Chip组件非常强大，包括普通的Chip、ActionChiop、FilterChip、ChoiceChip，
          // 普通的Chip相当于tags标签，而且，这个标签还可以设置头像、图标，还有删除回调，
          // ActionChip则相当于可点击的Chip，
          // FilterChip则是可以选择和取消选择的Chip，并且有选中状态，选中后前面会显示“√”，
          // ChoiceChip相当于单选的Chip，点击Chip，也有选中状态等
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text("A"),
            ),
            label: Text("Hamilton"),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text("B"),
            ),
            label: Text("Lafayette"),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text("C"),
            ),
            label: Text("Mulligan"),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text("D"),
            ),
            label: Text("Laurens"),
          ),
        ],
      ),
    );
  }
}
