import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'listViewBulider.dart';
import 'listview.dart';

void main() => runApp(MyApp());
/*

  void main(){
  runApp(MyApp())}
 */

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'My First Demo',
      home: new Scaffold(
          appBar: AppBar(
              textTheme: TextTheme(
                  title: TextStyle(fontSize: 18.0, color: Colors.yellow)),
              leading: new IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    SystemNavigator.pop();
                  }),
              centerTitle: false, //设置是否title 处于中间位置，true 是，false 否
              title: Text(
                'My First Demo',
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
              )),
          body: viewBuilder()),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        ListTile(
          dense: false,
          leading: Icon(
            Icons.satellite,
            color: Colors.yellow,
          ),
          title: Text("这是大标题"),
          subtitle: Text("这是小标题"),
          contentPadding: EdgeInsets.all(2.0),
        ),
        ListTile(
          contentPadding: EdgeInsets.all(2.0),
          leading: Icon(
            Icons.save,
            color: Colors.yellow,
          ),
          title: Text("这是大标题"),
          subtitle: Text("这是小标题"),
        ),
        ListTile(
          contentPadding: EdgeInsets.all(2.0),
          dense: false,
          leading: Icon(
            Icons.save_alt,
            color: Colors.yellow,
          ),
          title: Text("这是大标题"),
          subtitle: Text("这是小标题"),
        )
      ],

//        child: Image.network(
//          "http://pic16.nipic.com/20111006/6239936_092702973000_2.jpg",
//          alignment: Alignment.bottomLeft,
//          fit: BoxFit.contain,
//          repeat: ImageRepeat.repeat,
//        ),
      //圆角图片（方式一;）
//        decoration: BoxDecoration(
//        borderRadius: BorderRadius.circular(150),
//        image:  DecorationImage(
//        image: NetworkImage( "http://pic16.nipic.com/20111006/6239936_092702973000_2.jpg"),
//          fit: BoxFit.cover
//        ),
//
//    )
//       //方式二：
//        child: ClipOval(
//          child: Image.network("http://pic16.nipic.com/20111006/6239936_092702973000_2.jpg",
//          fit: BoxFit.cover,),
//        ),

//          textk控件
//        transform: Matrix4.rotationZ(0.2),
//        //旋转
//        padding: EdgeInsets.only(top: 8.0, left: 10.0),
//        //内边距
//        child: Text(
//          '这是一个文本框',
//          textAlign: TextAlign.center,
//          textScaleFactor: 1.0, //字体缩放
//          overflow: TextOverflow.ellipsis, //...的
//          style: TextStyle(
//              letterSpacing: 8.0,
//              //字体间距
//              fontSize: 18.0,
//              color: Colors.black,
//              fontWeight: FontWeight.w600,
//              //字体的粗细
//              decoration: TextDecoration.underline,
//              //下划线
//              decorationStyle: TextDecorationStyle.dashed), //划线样式
//        ),
//        height: 300.0,
//        width: 300.0,
//        decoration: BoxDecoration(
//          color: Colors.yellow,
//          border: Border.all(color: Colors.blue, width: 2.0), //边框颜色
//          borderRadius: BorderRadius.circular(10.0),
//        ),
    );
  }
}
