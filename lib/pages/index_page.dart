import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'home_page.dart';
import 'category_page.dart';
import 'cart_page.dart';
import 'user_page.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  // 底部导航的文字和图标
  final List<BottomNavigationBarItem> _bottomTabs = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), title: Text('首页')),
    BottomNavigationBarItem(
        icon: Icon(Icons.category),
        title: Text('分类')), //  CupertinoIcons没有，使用material icon 代替
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.shopping_cart), title: Text('购物车')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.profile_circled), title: Text('会员中心'))
  ];
  // 底部导航页面
  final List _tabPages = [HomePage(), CategoryPage(), CartPage(), UserPage()];
  int _currentIndex = 0; // 选中索引，更改页面

//  @override
//  initState() {
//    super.initState();
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('百姓生活+'),
      ),
      backgroundColor: Color.fromRGBO(245, 245, 245, 1.0),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          items: _bottomTabs,
          onTap: (index) => setState(() => _currentIndex = index)),
      body: _tabPages[_currentIndex],
    );
  }
}
