// 导入io库，调用sleep函数
import 'dart:io';

/// 模拟异步加载用户信息
Future _getUserInfo() async {
  await new Future.delayed(new Duration(milliseconds: 3000));
  return "我是用户";
}

/// 加载用户信息，顺便打印时间看看顺序
Future _loadUserInfo1() async {
  print("_loadUserInfo1:${new DateTime.now()}");
  print(await _getUserInfo());
  print("_loadUserInfo1:${new DateTime.now()}");
}

/// 加载用户信息，顺便打印时间看看顺序
void _loadUserInfo2() {
  print("_loadUserInfo2:${new DateTime.now()}");

  //如果直接调用_getUserInfo(); 不会执行延迟回调方法，所以才用下面的方法正确调用
  _getUserInfo().then((info) {
    print(info);
  });

  print("_loadUserInfo2:${new DateTime.now()}");
}

void main() {
  print("main:${new DateTime.now()}");
//  _loadUserInfo1();
  _loadUserInfo2();
  print("main:${new DateTime.now()}");
}
