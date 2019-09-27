import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'listData.dart';


class ListviewDemo extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: this._getDataList(),
    );
  }

  /**
   *  方式一
   */
  List<Widget> _getData() {
    List<Widget> list = List();
    for (var i = 0; i < 20; i++) {
      list.add(ListTile(title: Text("今晚终将是一个人呢"),));
    }
    return list;
  }

  /**
   *  f方式二：
   */
  List<Widget> _getDataList(){
  var tempList=ListData.map((value){
      return ListTile(
        title: Text(value["title"]),
        leading: Image.network(value["imageUrl"],
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
        subtitle: Text(value["author"])

      );
    });
    return tempList.toList();
    }


}

