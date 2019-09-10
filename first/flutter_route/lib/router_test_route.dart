import 'package:flutter/material.dart';
import 'package:flutter_route/tip_route.dart';

class RouterTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('text')),
      body: Center(
        child: RaisedButton(
          color: Colors.white,
          onPressed: () async {
            // 打开`TipRoute`，并等待返回结果
            var result = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  //text 路由参数
                  return TipRoute(text: "我是提示xxxx");
                },
              ),
            );

            //输出`TipRoute`路由返回结果
            print("路由返回值: $result");
          },
          child: Text("打开提示页"),
        ),
      ),
    );
  }
}
