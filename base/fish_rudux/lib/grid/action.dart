import 'package:demo/entrance/page.dart';
import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum GridAction { action, loadData }

class GridActionCreator {
  static Action onAction() {
    return const Action(GridAction.action);
  }

  static Action onLoadData() {
    return const Action(GridAction.loadData);
  }
}
