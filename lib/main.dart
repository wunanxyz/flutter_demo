import 'package:flutter/material.dart';
// material 是google公司推行的一套设计风格(设计语言、设计设计规范)
// http://material.io

//  -----------------  1. 完整步骤一      -------------------
// Widget 小部件
// 一个Widget可以包含另一个 Widget，该Widget可以包含其他Widget
void main(){
  runApp( // 挂载项目
      Center(
        child: Text(
            'Hello!!!',
        textDirection: TextDirection.ltr,// 文字方向
        ),
      )
  );
}
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    return Text('hello');
//  }
//}
