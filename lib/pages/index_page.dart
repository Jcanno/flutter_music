import 'package:flutter/material.dart';
import '../constant.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'found_page/index_page.dart';

class IndexPage extends StatelessWidget {
  IndexPage({Key key}) : super(key: key);

  int currentIndex = 0;

  final List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      icon: Column(
        children: <Widget>[
          Icon(CupertinoIcons.music_note, color: AppPrimaryColor),
          Text('发现', style: TextStyle(color: AppPrimaryColor),)
        ],
      ),
      title: SizedBox(
        height: 0,
        width: 0,
      ),
      // activeIcon: Icon(CupertinoIcons.video_camera)
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
      body: Container(
        child: FoundPage()
      ),
    );
  }
}