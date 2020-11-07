import 'package:flutter/material.dart';
import 'dart:async';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    
    //在加载页面停顿3秒
    Future.delayed(Duration(seconds: 3),(){
      print('flutter 实战');
      Navigator.of(context).pushReplacementNamed("app");
    });
  }

  @override
  Widget build(BuildContext context) {
    //启动页面
    return Center(
      child: Stack(
        children: <Widget>[
          //加载背景图
          Image.asset('assets/images/loading.jpg'),
          Center(
            child: Text('Flutter-lullabyys',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    decoration: TextDecoration.none)),
          )
        ],
      ),
    );
  }
}
