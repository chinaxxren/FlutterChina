import 'package:flutter/material.dart';

import 'stack_position_page_1.dart';
import 'stack_position_page_2.dart';

void main() => runApp(MyApp());

/*
层叠布局和Web中的绝对定位、Android中的Frame布局是相似的，
子组件可以根据距父容器四个角的位置来确定自身的位置。
绝对定位允许子组件堆叠起来（按照代码中声明的顺序）
*/
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: StackPositionPage1(title: 'Flutter Stack Positioned 1'),
      home: StackPositionPage2(title: 'Flutter Stack Positioned 2'),
    );
  }
}
