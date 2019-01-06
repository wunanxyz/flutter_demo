import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  ///  需要重写
  @override
  State<BottomNavigationBarDemo>  createState() => _BottomNavigationBarDemo();
}

class _BottomNavigationBarDemo extends State<BottomNavigationBarDemo> {

  int _currentIndex = 0;
  void _onTapHandler(int index){
    setState(() {
      _currentIndex = index;
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      /// 激活状态的 index
        currentIndex: _currentIndex,
        onTap: _onTapHandler,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black, /// 激活状态下的背景颜色
        items: [ // 当大于等于4,会显示空白，因为导航类型变化了这里手动设置BottomNavigationBar的items
          BottomNavigationBarItem(icon: Icon(Icons.home),
              title: Text('home')),
          BottomNavigationBarItem(icon: Icon(Icons.list),
              title: Text('list')),
          BottomNavigationBarItem(icon: Icon(Icons.my_location),
              title: Text('my')),
          BottomNavigationBarItem(icon: Icon(Icons.my_location),
              title: Text('my')),
          BottomNavigationBarItem(icon: Icon(Icons.my_location),
              title: Text('my'))
        ],
    );
  }
}
