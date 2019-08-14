import 'package:flutter/material.dart';

class ParentWidgetC extends StatefulWidget {
  _ParentWidgetCState createState() => _ParentWidgetCState();
}

class _ParentWidgetCState extends State<ParentWidgetC> {
  bool active = false;

  void _handleTapChanged(bool newValue) {
    setState(() {
      active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TapBoxC(active: active, valueChanged: _handleTapChanged),
    );
  }
}

class TapBoxC extends StatefulWidget {
  TapBoxC({Key, key, this.active, @required this.valueChanged})
      : super(key: key);

  bool active;
  ValueChanged<bool> valueChanged;

  _TapBoxCState createState() => _TapBoxCState();
}

class _TapBoxCState extends State<TapBoxC> {
  bool _highlight = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap() {
    widget.valueChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    // 在按下时添加绿色边框，当抬起时，取消高亮
    return new GestureDetector(
      onTapDown: _handleTapDown,
      // 处理按下事件
      onTapUp: _handleTapUp,
      // 处理抬起事件
      onTap: _handleTap,
      onTapCancel: _handleTapCancel,
      child: new Container(
        child: new Center(
          child: new Text(widget.active ? 'Active' : 'Inactive',
              style: new TextStyle(fontSize: 32.0, color: Colors.white)),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
          color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
          border: _highlight
              ? new Border.all(
                  color: Colors.teal[700],
                  width: 10.0,
                )
              : null,
        ),
      ),
    );
  }
}
