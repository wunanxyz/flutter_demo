import 'package:flutter/material.dart';
// material 是google公司推行的一套设计风格(设计语言、设计设计规范)
// https://material.io/

// Widget 小部件
// 一个Widget可以包含另一个 Widget，该Widget可以包含其他Widget
// 这个功能 有2个部件Center、Text
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