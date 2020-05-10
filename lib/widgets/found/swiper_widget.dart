import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import '../../model/swiperModel.dart';
import '../../constant.dart';


class SwiperDiy extends StatelessWidget {
  final List<Banners> list;

  const SwiperDiy({this.list});

  @override
  Widget build(BuildContext context) {
    if(list.length > 0) {
      return Container(
        padding: const EdgeInsets.only(top: 10),
        height: ScreenUtil().setHeight(250),
        width: ScreenUtil().setWidth(750),
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.only(right: 10, left: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    '${list[index].pic}',
                  ),  // 图片数组
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            );
          },
          itemCount: list.length,
          autoplay: true,
          pagination: SwiperPagination(
            builder: DotSwiperPaginationBuilder(
              color: Colors.white70,
              activeColor: AppPrimaryColor,
              size: 8.0
            )
          ),
        ),
      );
    }else {
      return Container(
        height: ScreenUtil().setHeight(250),
        width: ScreenUtil().setWidth(750),
      );
    }
  }
}