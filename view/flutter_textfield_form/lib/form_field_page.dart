import 'package:flutter/material.dart';

class FormFieldPage extends StatefulWidget {
  _FormFieldPageState createState() => _FormFieldPageState();
}

class _FormFieldPageState extends State<FormFieldPage> {
  TextEditingController _usernameEditingController = new TextEditingController();
  TextEditingController _passwordEditingController = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Focus Node"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
//          autovalidate: true,
          child: Column(
            children: <Widget>[
              TextFormField(
                autofocus: true,
                controller: _usernameEditingController,
                decoration: InputDecoration(
                  labelText: "用户名",
                  hintText: "用户名或邮箱",
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (v) {
                  return v.trim().length > 0 ? null : "用户名不能为空";
                },
              ),
              TextFormField(
                obscureText: true,
                controller: _passwordEditingController,
                decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "您的登录密码",
                  prefixIcon: Icon(Icons.lock),
                ),
                validator: (v) {
                  return v.trim().length >= 6 ? null : "密码不能少于6位";
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("登录"),
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        onPressed: () {
                          //在这里不能通过此方式获取FormState，context不对
                          //print(Form.of(context));

                          // 通过_formKey.currentState 获取FormState后，
                          // 调用validate()方法校验用户名密码是否合法，校验
                          // 通过后再提交数据。
                          if ((_formKey.currentState as FormState).validate()) {
                            print("validate success!");
                          } else {
                            print("validate error!");
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
