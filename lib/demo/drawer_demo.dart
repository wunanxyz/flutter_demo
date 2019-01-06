import 'package:flutter/material.dart';
class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(

      padding: EdgeInsets.only(right: 70),

      children: <Widget>[
        /// 用户账户相关内容
        UserAccountsDrawerHeader(
          accountName: Text(
            'wu nan',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ), ),
          accountEmail: Text(
            'wunan@qq.com',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ), ),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage('https://resources.ninghao.org/images/wanghao.jpg'),
          ),
          decoration: BoxDecoration(

            color: Colors.blueAccent,
            image: DecorationImage(
                image: NetworkImage('https://ws1.sinaimg.cn/large/006tNc79gy1fyxa5zzg9zj31080p01kx.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.yellow[400].withOpacity(0.6),
                    BlendMode.hardLight)

            ),

          ),
        )
        ,
        ListTile(
          title: Text('Message', textAlign: TextAlign.right, ),

          /// 右边
          trailing:Icon(Icons.change_history, color: Colors.black12,size: 30.0, ),
//              leading:Icon(Icons.change_history,color: Colors.black12,size: 30.0,) ,
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          title: Text('Message', textAlign: TextAlign.right, ),

          /// 右边
          trailing:Icon(Icons.directions_car, color: Colors.black12, size: 30.0, ),
//              leading:Icon(Icons.change_history,color: Colors.black12,size: 30.0,) ,
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          title: Text('Message', textAlign: TextAlign.right, ),
          /// 右边
          trailing:Icon(Icons.watch_later, color: Colors.black12, size: 30.0, ),
//              leading:Icon(Icons.change_history,color: Colors.black12,size: 30.0,) ,
          onTap: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
