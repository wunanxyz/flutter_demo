import 'package:flutter/material.dart';
import '../model/post.dart'; // 注意 目录

class ListViewDemo extends StatelessWidget {

  Widget _listItemBuilder(BuildContext context,int index){
    return Container(
      color: Colors.yellowAccent, //  Colors.grey[100
      margin: EdgeInsets.all(8.0), // 内边距
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0,) ,// 间距
          Text(posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(posts[index].title,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(height: 16.0,),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return ListView.builder( // 项目主体
      itemBuilder: _listItemBuilder,
      itemCount: posts.length,
    );
  }
}