import 'package:flutter/material.dart';

class CustomFieldPage extends StatefulWidget {
  _CustomFieldPageState createState() => _CustomFieldPageState();
}

class _CustomFieldPageState extends State<CustomFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Focus Node"),
      ),
      body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Theme(
                data: Theme.of(context).copyWith(
                  hintColor: Colors.grey[200], //定义下划线颜色
                  inputDecorationTheme: InputDecorationTheme(
                      labelStyle: TextStyle(color: Colors.grey), //定义label字体样式
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0) //定义提示文本样式
                      ),
                ),
                child: Column(
                  children: <Widget>[
                    TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                        labelText: "用户名",
                        hintText: "用户名或邮箱",
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "密码",
                        hintText: "您的登录密码",
                        prefixIcon: Icon(Icons.lock),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "email",
                    hintText: "用户名或邮箱",
                    prefixIcon: Icon(Icons.email),
                    border: InputBorder.none,
                  ),
                ),
                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[200], width: 1.0))),
              ),
            ],
          )),
    );
  }
}
