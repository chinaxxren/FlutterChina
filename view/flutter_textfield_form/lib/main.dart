import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      theme: ThemeData(primaryColor: Colors.blue),
//      home: MyHomePage(title: "Flutter TextField Form"),
//      home: FocusTestPage(),
//      home: CustomFieldPage(),
      home: FormFieldPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                labelText: "用户名",
                hintText: "用户名或邮箱",
                prefixIcon: Icon(Icons.person),
              ),
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

class FocusTestPage extends StatefulWidget {
  FocusTestState createState() => FocusTestState();
}

class FocusTestState extends State<FocusTestPage> {
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();

  FocusScopeNode focusScopeNode;

  @override
  Widget build(BuildContext context) {
    focusNode1.addListener(() {
      print(focusNode1.hasFocus);
    });

    focusNode2.addListener(() {
      print(focusNode2.hasFocus);
    });
    return Scaffold(
      appBar: AppBar(
        title: Text("Focus Node"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              autofocus: true,
              focusNode: focusNode1,
              decoration: InputDecoration(labelText: "input1"),
            ),
            TextField(
              focusNode: focusNode2,
              decoration: InputDecoration(labelText: "input2"),
            ),
            Builder(builder: (ctx) {
              return Column(
                children: <Widget>[
                  RaisedButton(
                    child: Text("移动焦点"),
                    onPressed: () {
                      if (null == focusScopeNode) {
                        focusScopeNode = FocusScope.of(context);
                      }
                      focusScopeNode.requestFocus(focusNode2);
                    },
                  ),
                  RaisedButton(
                    child: Text("隐藏键盘"),
                    onPressed: () {
                      focusNode1.unfocus();
                      focusNode2.unfocus();
                    },
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}

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
                        hintStyle: TextStyle(
                            color: Colors.grey, fontSize: 14.0) //定义提示文本样式
                        )),
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
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey[200], width: 1.0))),
              ),
            ],
          )),
    );
  }
}

class FormFieldPage extends StatefulWidget {
  _FormFieldPageState createState() => _FormFieldPageState();
}

class _FormFieldPageState extends State<FormFieldPage> {
  TextEditingController _usernameEditingController =
      new TextEditingController();
  TextEditingController _passwordEditingController =
      new TextEditingController();
  GlobalKey _formKey = new GlobalKey();

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
          autovalidate: true,
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
                    child:  RaisedButton(
                      padding:  const EdgeInsets.all(15.0),
                      child: Text("登录"),
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      onPressed: () {
                        //在这里不能通过此方式获取FormState，context不对
                        //print(Form.of(context));

                        // 通过_formKey.currentState 获取FormState后，
                        // 调用validate()方法校验用户名密码是否合法，校验
                        // 通过后再提交数据。
                        if ((_formKey.currentState as FormState)
                            .validate()) {

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
