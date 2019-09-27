import 'package:flutter/material.dart';
import 'listData.dart';

/**
 *  listView Builder 模式
 */
class viewBuilder extends StatelessWidget {
  List list = new List();
  viewBuilder() {
    for (var i = 0; i < 20; i++) {
      this.list.add('我是第$i条数据哦');
    }
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ListData.length,
      itemBuilder: (context, index) {
        return ListTile(
            title: Text(ListData[index]["title"]),
            leading: Image.network(
              ListData[index]["imageUrl"],
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            subtitle: Text(ListData[index]["author"]));
      },
    );
  }
}
