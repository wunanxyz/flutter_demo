import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // 重写 build方法， 返回一个 Widget。
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // 返回一个 MaterialApp
      home: Hello(),
    ) ; //
  }
}

class Hello extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        'Hello!!!',
        textDirection: TextDirection.ltr,// 文字方向
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 40,
          color: Colors.yellow,
        ),
      ),
    );
  }
}
