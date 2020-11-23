import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBanner extends StatelessWidget {
  //暂时从网络获取的图片
  List<Map> imageList = [
    {
      "url":
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581401773519&di=efc809f404c42c8de28f7f829f1d0b51&imgtype=0&src=http%3A%2F%2F01.minipic.eastday.com%2F20170407%2F20170407003743_1f4967f106ba9dd87277f8d5969dc711_5.jpeg"
    },
    {
      "url":
          "https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2040389276,2611098741&fm=26&gp=0.jpg"
    },
    {
      "url":
          "https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1629251846,4126644826&fm=26&gp=0.jpg"
    }
  ];

  //自定圆点分页指示器
  buildSwiperPagination() {
    // 分页指示器
    return SwiperPagination(
      //指示器显示的位置
      alignment: Alignment.bottomLeft, // 位置 Alignment.bottomCenter 底部中间
      // 距离调整
      margin: EdgeInsets.fromLTRB(20.w, 0, 0, 6.w),
      // 指示器构建
      builder: DotSwiperPaginationBuilder(
          // 点之间的间隔
          space: 3.w,
          // 没选中时的大小
          size: 7.w,
          // 选中时的大小
          activeSize: 7.w,
          // 没选中时的颜色
          color: Color.fromRGBO(255, 255, 255, 0.4),
          //选中时的颜色
          activeColor: Colors.white),
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(375, 667), allowFontScaling: false);
    return Container(
      margin: EdgeInsets.fromLTRB(16.w, 12.w, 16.w, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: AspectRatio(
        //设置图片宽高比为16：9
        aspectRatio: 3 / 1,
        child: new Swiper(
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(6.w),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(imageList[index]["url"]),
                      fit: BoxFit.fitWidth,
                    )),
              ),
            );
          },
          itemCount: this.imageList.length,
          //配置指示器
          pagination: buildSwiperPagination(),
          //配置左右箭头
          //control: new SwiperControl(),
          //scale: 0.96,
          loop: true,
          duration: 800,
          //viewportFraction: 0.92,
          autoplay: true,
        ),
      ),
    );
  }
}
