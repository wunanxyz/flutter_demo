import 'package:flutter/material.dart';
import 'model/post.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // 重写 build方法， 返回一个 Widget。
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // 返回一个 MaterialApp
      home:Home(),
      theme: ThemeData( // 主题颜色
        primarySwatch: Colors.yellow,// 主题颜色
      ),
    ) ; //
  }
}

class Home extends StatelessWidget {

  Widget _listItemBuilder(BuildContext context,int index){
    return Text(posts[index].title);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold( // 这个material.dart 中的小部件，页面顶固和底部的工具栏等
      appBar: AppBar( // 导航
        title: Text('wu nan !!!'),
        elevation: 1.0,// 导航页面的阴影  默认40 ，如果不要阴影设置为0
      ),
      body: ListView.builder(
          itemBuilder: _listItemBuilder,
        itemCount: posts.length,
      ),
    );
  }
}

