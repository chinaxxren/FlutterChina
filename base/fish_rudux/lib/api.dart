import 'package:demo/model.dart';

class Api {
  factory Api() {
    return _get();
  }

  static Api _instance;

  Api._inernal() {}

  static _get() {
    if (_instance == null) {
      return Api._inernal();
    }

    return _instance;
  }

  List<GridModel> getGridData() {
    return [
      GridModel(name: "index 1"),
      GridModel(name: "index 2"),
      GridModel(name: "index 3"),
      GridModel(name: "index 4"),
      GridModel(name: "index 5"),
      GridModel(name: "index 6"),
      GridModel(name: "index 7"),
      GridModel(name: "index 8"),
      GridModel(name: "index 9"),
      GridModel(name: "index 10"),
      GridModel(name: "index 11"),
      GridModel(name: "index 12"),
    ];
  }
}
