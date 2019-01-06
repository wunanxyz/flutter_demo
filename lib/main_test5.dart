import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // 重写 build方法， 返回一个 Widget。
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // 返回一个 MaterialApp
      home: Scaffold( // 这个material.dart 中的小部件，页面顶固和底部的工具栏等
        appBar: AppBar( // 导航
          title: Text('wu nan !!!'),
          elevation: 1.0,// 导航页面的阴影  默认40 ，如果不要阴影设置为0
        ),
        body: Hello(),
      ),
      theme: ThemeData( // 主题颜色
        primarySwatch: Colors.yellow,// 主题颜色
      ),
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
          color: Colors.red,
        ),
      ),
    );
  }
}
