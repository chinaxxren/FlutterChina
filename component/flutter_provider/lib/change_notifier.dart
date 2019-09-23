import 'package:flutter/material.dart';

class ChangeNotifier implements Listenable {
  @override
  void addListener(VoidCallback listener) {
    //添加监听器
    print("addListener");
  }

  @override
  void removeListener(VoidCallback listener) {
    //移除监听器
    print("removeListener");
  }

  void notifyListeners() {
    //通知所有监听器，触发监听器回调
    print("notifyListeners");
  }
}
