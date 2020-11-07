import 'package:flutter/material.dart';
import 'pages/about_us_page.dart';
import 'pages/home_page.dart';
import 'pages/news_page.dart';
import 'pages/product_page.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  //当前选择页面的索引
  var _currentIndex = 0;
  HomePage homePage;
  ProductsPage productsPage;
  NewsPage newsPage;
  AboutPage aboutPage;

  //导航切换时的页面内容
  currentPage(){
    switch(_currentIndex){
      case 0:
        if(homePage == null){
          homePage = HomePage();
        }
        return homePage;
      case 1:
        if(productsPage == null){
          productsPage = ProductsPage();
        }
        return productsPage;
      case 2:
        if(newsPage == null){
          newsPage = NewsPage();
        }
        return newsPage;
      case 3:
        if(aboutPage == null){
          aboutPage = AboutPage();
        }
        return aboutPage;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter实战'),
        leading: Icon(Icons.home),
        actions: <Widget>[
          //右侧边距20.0
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.search),
            ),
          )
        ],
      ),
      body: currentPage(),
      bottomNavigationBar: BottomNavigationBar(
        //通过 fixedColor设置选中的item的颜色
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        //底部导航栏
        items: [
          BottomNavigationBarItem(
              title: Text(
                '首页',
              ),
              icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text('产品'), icon: Icon(Icons.apps)),
          BottomNavigationBarItem(
              title: Text('新闻'), icon: Icon(Icons.fiber_new)),
          BottomNavigationBarItem(
              title: Text('关于我们'), icon: Icon(Icons.insert_comment))
        ],
      ),
    );
  }
}
