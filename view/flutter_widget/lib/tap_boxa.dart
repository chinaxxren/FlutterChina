import 'package:flutter/material.dart';

class TapBoxA extends StatefulWidget {
  TapBoxA({Key, key}) : super(key: key);

  @override
  _TapboxAState createState() => _TapboxAState();
}

class _TapboxAState extends State<TapBoxA> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            _active ? "Active" : "Inactive",
            style: new TextStyle(fontSize: 32, color: Colors.blue),
          ),
        ),
        width: 200,
        height: 200,
        decoration: new BoxDecoration(color: _active ? Colors.lightGreen[700] : Colors.grey[600]),
      ),
    );
  }
}
