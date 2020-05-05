import 'package:flutter/material.dart';
import '../constant.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter/cupertino.dart';

class IndexPage extends StatelessWidget {
  IndexPage({Key key}) : super(key: key);

  int currentIndex = 0;

  final List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.music_note),
      title: Text('发现')
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.video_camera),
      title: Text('视频')
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.double_music_note),
      title: Text('我的')
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.person),
      title: Text('云村')
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.person),
      title: Text('账号')
    ),
  ];



  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppBottomNavBgColor,
        currentIndex: currentIndex,
        items: bottomItems,
        type: BottomNavigationBarType.fixed,
      ),
      // appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.only(right: 10.0, left: 10.0),
        decoration: BoxDecoration(
          color: AppPrimaryBgColor
        ),
        child: Center(
          child: Text('首页'),
        ),
      ),
    );
  }
}