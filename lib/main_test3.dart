import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//  StatelessWidget  不需要修改数据
//  StatefulWidget  需要修改数据

// extends 继承
class MyApp extends StatelessWidget {
  // 重写 build方法， 返回一个 Widget。
  @override
  Widget build(BuildContext context) {
    return  Center(
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
