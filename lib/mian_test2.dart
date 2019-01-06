import 'package:flutter/material.dart';

void main(){
  runApp( // 挂载项目
     new MyApp()
  );
}

//  StatelessWidget  不需要修改数据
//  StatefulWidget  需要修改数据

class MyApp extends StatelessWidget {
  // 重写 build方法， 返回一个 Widget。
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(
        'Hello!!!',
        textDirection: TextDirection.ltr,// 文字方向
      ),
    );
  }
}
