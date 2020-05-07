import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import '../model/swiperModel.dart';


class SwiperDiy extends StatelessWidget {
  final List<Banners> list;

  const SwiperDiy({this.list});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(300),
      width: ScreenUtil().setWidth(750),
      child: Swiper(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: (){},
            child: Image.network(list[index].pic, fit: BoxFit.fill,),
          );
        },
        autoplay: true,
        pagination: SwiperPagination(),
      ),
    );
  }
}