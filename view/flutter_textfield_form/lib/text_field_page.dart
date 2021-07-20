import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  TextFieldPage({Key key}) : super(key: key);

  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                // labelText: "用户名",
                hintText: "用户名或邮箱",
                prefixIcon: Icon(Icons.person),
              ),
              onChanged: (str) {
                print(str);
              },
              controller: controller,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "密码",
                hintText: "您的登录密码",
                prefixIcon: Icon(Icons.lock),
              ),
              onChanged: (value) {
                print(value);
                print(controller.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
