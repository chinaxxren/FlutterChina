import 'dart:isolate';
import 'dart:io';

/**
 * 除了使用spawnUri，更常用的是使用spawn方法来创建新的Isolate，
 * 我们通常希望将新创建的Isolate代码和main Isolate代码写在同一个文件，
 * 且不希望出现两个main函数，而是将指定的耗时函数运行在新的Isolate，
 * 这样做有利于代码的组织和代码的复用。spawn方法有两个必须的参数，
 * 第一个是需要运行在新Isolate的耗时函数，第二个是动态消息，
 * 该参数通常用于传送主Isolate的SendPort对象
 */

void main() {
  print("main isolate start");
  create_isolate();
  print("main isolate end");
}

// 创建一个新的 isolate
create_isolate() async {
  ReceivePort rp1 = new ReceivePort();
  SendPort port1 = rp1.sendPort;

  Isolate newIsolate = await Isolate.spawn(doWork, port1);

  SendPort port2;
  rp1.listen((message) {
    print("main isolate message: $message");
    if (message[0] == 0) {
      port2 = message[1];
    } else {
      port2?.send([1, "这条信息是 main isolate 发送的"]);
    }
  });
}

// 处理耗时任务
void doWork(SendPort port1) {
  print("new isolate start");
  ReceivePort rp2 = new ReceivePort();
  SendPort port2 = rp2.sendPort;

  rp2.listen((message) {
    print("doWork message: $message");
  });

  // 将新isolate中创建的SendPort发送到主isolate中用于通信
  port1.send([0, port2]);

  // 模拟耗时5秒
  sleep(Duration(seconds: 5));
  port1.send([1, "doWork 任务完成"]);

  print("new isolate end");
}
