import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'loading.dart';
import 'app.dart';

void main() =>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Flutter企业站实战',
  //自定义主题
  theme: mDefaultTheme,
  routes: <String,WidgetBuilder>{
    "app":(BuildContext context) =>App(),
    "company_info": (BuildContext context) => WebviewScaffold(
      url: 'https://www.baidu.com',
      appBar: AppBar(
        title: Text('公司介绍'),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: (){
            //返回到主页
          },
        ),
      ),
    ),
  },
  //home 指定加载页面(loading.dart)
  home: LoadingPage(),
));

final ThemeData mDefaultTheme = ThemeData(
  primaryColor: Colors.redAccent
);