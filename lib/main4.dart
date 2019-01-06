// tabbar 标签栏 ；tabbarView 标签视图 ；tabbarViewController 标签控制器


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
    // 每个tab都可以对应一个tabView，在tabView中显示对应内容。
    // 注意下面的 AppBar的bottom和Scaffold的body
    return DefaultTabController( // 添加 默认的 DefaultTabController
      length: 3,
      child: Scaffold( // 这个material.dart 中的小部件，页面顶固和底部的工具栏等
        appBar: AppBar( // 导航 顶部工具栏
          leading: IconButton( // 导航左边的按钮
            icon: Icon(Icons.menu),
            onPressed: () => debugPrint('print'),
          ),
          /// 点击之后有水波纹的效果，是material的效果
          actions: <Widget>[ // 导航右边按钮 是多个数组
            IconButton( // 导航右边的按钮
              icon: Icon(Icons.menu),
              tooltip: 'Navigration',
              onPressed: () => debugPrint('print'),
            ), IconButton( // 导航右边的按钮
              icon: Icon(Icons.search),
              tooltip: 'search',
              onPressed: () => debugPrint('search'),
            )
          ],
          title: Text('wu nan !!!'),
          elevation: 1.0,// 导航页面的阴影  默认40 ，如果不要阴影设置为0
          // 添加底部的 tab
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,// 未被选择颜色
            /// 指示器颜色
            indicatorColor: Colors.red,/// Colors.black54,
            /// 指示器长度，默认 TabBarIndicatorSize.tab
            indicatorSize: TabBarIndicatorSize.label,
            /// 指示器高度
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.access_time),),
              Tab(icon: Icon(Icons.change_history),),
              Tab(icon: Icon(Icons.directions_car),),
            ],),
        ),
        // 具体的TabBarView 内容

        body: TabBarView(
          children: <Widget>[
            Icon(Icons.hdr_off, size: 128.0, color: Colors.yellow,),
            Icon(Icons.keyboard_arrow_down, size: 128.0, color: Colors.yellow,),
            Icon(Icons.mode_comment, size: 128.0, color: Colors.yellow,),
          ],
        ),
      ),
    );

  }
}
