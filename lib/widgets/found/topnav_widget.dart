import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class TopNav extends StatelessWidget {
  TopNav({Key key}) : super(key: key);

  static final map = {
      '每日推荐': 'images/icon_daily.png',
      '歌单': 'images/icon_playlist.png',
      '排行榜': 'images/icon_rank.png',
      '电台': 'images/icon_radio.png',
      '直播': 'images/icon_look.png',
    };

  var keys = map.keys.toList();
  var width = ScreenUtil().setWidth(100);
  Widget _getGridViewItem(context, key) {
    return Column(
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: width,
              height: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width / 2),
                border: Border.all(color: Colors.black12, width: 0.5),
                gradient: RadialGradient(
                  colors: [
                    Color(0xFFFF8174),
                    Colors.red,
                  ],
                  center: Alignment(-1.7, 0),
                  radius: 1,
                ),
              color: Colors.red),
            ),
            Image.asset(
              '${map[key]}',
              width: width,
              height: width,
            ),
          ],
        ),
        SizedBox(
          height: ScreenUtil().setWidth(10),
        ),
        Text(
          '$key',
          style: TextStyle(color: Colors.black87, fontSize: 14),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      height: ScreenUtil().setHeight(200),
      child: GridView.count(
        padding: EdgeInsets.only(bottom: 5),
        crossAxisCount: keys.length,
        physics: NeverScrollableScrollPhysics(),
        children: keys.map((item){
          return _getGridViewItem(context, item);
        }).toList(),
      )
    );
  }
}