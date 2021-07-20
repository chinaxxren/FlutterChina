import 'package:flutter/material.dart';

class ContextSateRoute extends StatelessWidget {
  const ContextSateRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Context测试"),
      ),
      body: Builder(builder: (context) {
        return RaisedButton(
          onPressed: () {
            // 查找父级最近的Scaffold对应的ScaffoldState对象
            ScaffoldState? _state = context.findAncestorStateOfType<ScaffoldState>();
            // 调用ScaffoldState的showSnackBar来弹出SnackBar
            _state!.showSnackBar(
              const SnackBar(
                content: Text("我是SnackBar"),
              ),
            );
          },
          child: const Text("显示SnackBar"),
        );
      }),
    );
  }
}
