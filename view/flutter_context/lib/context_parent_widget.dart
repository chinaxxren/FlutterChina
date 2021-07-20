import 'package:flutter/material.dart';

class ContextWidgetRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Context测试"),
      ),
      body: Builder(builder: (context) {
        // 在Widget树中向上查找最近的父级`Scaffold` widget
        Scaffold? scaffold = context.findAncestorWidgetOfExactType<Scaffold>();
        // 直接返回 AppBar的title， 此处实际上是Text("Context测试")
        var bar = (scaffold!.appBar as AppBar);
        return bar.title!;
      }),
    );
  }
}
