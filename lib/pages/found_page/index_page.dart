import 'package:flutter/material.dart';
import 'package:flutter_music/model/swiperModel.dart';
import 'package:flutter_screenutil/screenutil.dart';
import '../../widgets/swiper_widget.dart';
import 'package:flutter/cupertino.dart';
import '../../api/found.dart';
import 'dart:io';
import 'dart:convert';
import '../../constant.dart';
class FoundPage extends StatelessWidget {
  List<Banners> list = [];

  FoundPage({Key key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          elevation: 0,
        ),
        preferredSize: Size.zero,
      ),
      body: FutureBuilder(
        future: _getBanner(),
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            return SafeArea(
              child: Column(
                children: <Widget>[
                  _topbar(),
                  SwiperDiy(
                    list: list,
                  )
                ],
              ),
            );
          }else {
            return Text('正在加载');
          }
          
        },
      )      
    );
  }

  Future _getBanner() async{
    String type;
    if(Platform.isIOS) {
      type = '2';
    }else {
      type = '1';
    }
    Map<String, String> query = {
      'type': type
    };

    var res = await getBanners(query);
    SwiperList swiperList =  SwiperList.fromJson(json.decode(res.toString()));
    list = swiperList.banners;
    print(list[0].pic);
    return 'end';
  }

  Widget _topbar() {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Icon(CupertinoIcons.mic, color: Colors.black),
          ),
          Expanded(
            flex: 8,
            child: Padding(
              padding: EdgeInsets.only(left: 5.0, right: 5.0),
              child: TextField(),
            ),
          ),
          Expanded(
            flex: 1,
            child: Icon(CupertinoIcons.home, color: Colors.black,),
          ),
        ],
      )
    );
  }
}
