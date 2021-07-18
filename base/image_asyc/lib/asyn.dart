import 'dart:io';

void main() {
//  DateTime now = new DateTime.now();
//  test();
//  print("main time->${DateTime.now().millisecondsSinceEpoch - now.millisecondsSinceEpoch}");

    /// 初始化状态，加载用户信息
    print("initState:${new DateTime.now()}");
    _loadUserInfo();
    print("initState:${new DateTime.now()}");
}

void test() async {
  DateTime now = new DateTime.now();
  await delay();
  print("test time->${DateTime.now().millisecondsSinceEpoch - now.millisecondsSinceEpoch}");
}

void delay() {
  DateTime now = new DateTime.now();
  sleep(Duration(seconds: 5));
  print("delay time->${DateTime.now().millisecondsSinceEpoch - now.millisecondsSinceEpoch}");
}

/// 模拟异步加载用户信息
Future _getUserInfo() async{
  new Future.delayed(new Duration(milliseconds: 3000));
  return "我是用户";
}

/// 加载用户信息，顺便打印时间看看顺序
Future _loadUserInfo() async{
  print("_loadUserInfo:${new DateTime.now()}");
  _getUserInfo().then((info){
    print(info);
  });
  print("_loadUserInfo:${new DateTime.now()}");
}
