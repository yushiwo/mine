import 'package:flutter/material.dart';
import './SidebarPage.dart';  //侧边栏
import './h5/custom_webview.dart';  //侧边栏

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    return new _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("ZR"), backgroundColor: Colors.redAccent,),  //头部的标题AppBar
      drawer: new Drawer(     //侧边栏按钮Drawer
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(   //Material内置控件
              accountName: new Text('郑睿'), //用户名
              accountEmail: new Text('zhengrui504@504.com'),  //用户邮箱
              currentAccountPicture: new GestureDetector( //用户头像
                onTap: () => print('current user'),
                child: new CircleAvatar(    //圆形图标控件
                  backgroundImage: new NetworkImage('https://upload.jianshu.io/users/upload_avatars/7700793/dbcf94ba-9e63-4fcf-aa77-361644dd5a87?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240'),//图片调取自网络
                ),
              ),
              decoration: new BoxDecoration(    //用一个BoxDecoration装饰器提供背景图片
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  // image: new NetworkImage('https://raw.githubusercontent.com/flutter/website/master/_includes/code/layout/lakes/images/lake.jpg')
                  //可以试试图片调取自本地。调用本地资源，需要到pubspec.yaml中配置文件路径
                  image: new ExactAssetImage('images/lake.jpg'),
                ),
              ),
            ),
            new ListTile(   //第一个功能项
                title: new Text('First Page'),
                trailing: new Icon(Icons.arrow_upward),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new SidebarPage("first")));
                }
            ),
            new ListTile(   //第二个功能项
                title: new Text('Second Page'),
                trailing: new Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.of(context).pop();
//                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new CustomWebView("http://app.mi.com/details?id=com.netease.geek")));
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new CustomWebView("http://app.mi.com/details?id=com.netease.camera&ref=search")));
                }
            ),
            new ListTile(   //第二个功能项
                title: new Text('Second Page'),
                trailing: new Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('/a');
                }
            ),
            new Divider(),    //分割线控件
            new ListTile(   //退出按钮
              title: new Text('Close'),
              trailing: new Icon(Icons.cancel),
              onTap: () => Navigator.of(context).pop(),   //点击后收起侧边栏
            ),
          ],
        ),
      ),
      body: new Center(  //中央内容部分body
        child: new Text('HomePage',style: new TextStyle(fontSize: 35.0),),
      ),
    );
  }
}