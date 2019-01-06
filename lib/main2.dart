import 'package:flutter/material.dart';
import './demo/listview_demo.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // 重写 build方法， 返回一个 Widget。
  @override
  Widget build(BuildContext context) {
    return MaterialApp(// 返回一个 MaterialApp
      debugShowCheckedModeBanner:false ,// 右边的 debug字体隐去
      home: Home(),
      theme: ThemeData( // 主题颜色
        backgroundColor: Colors.red,
        primarySwatch: Colors.yellow,// 主题颜色
      ),
    ) ; //
  }
}


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold( // 这个material.dart 中的小部件，页面顶固和底部的工具栏等
      appBar: AppBar( // 导航 顶部工具栏
        title: Text('wu nan !!!'),
        elevation: 1.0,// 导航页面的阴影  默认40 ，如果不要阴影设置为0
      ),
      body: ListViewDemo(),
    );
  }
}
