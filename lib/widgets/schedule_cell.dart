import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';

class ScheduleCell extends StatelessWidget {
  final String scheduleTime;
  final String scheduleContent;
  final bool isEnd;
  final bool isLine;

  const ScheduleCell({
    Key key,
    this.scheduleTime,
    this.scheduleContent,
    this.isEnd,
    this.isLine,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(375, 667), allowFontScaling: false);

    return Container(
      width: 375.w,
      height: 202.w,
      color: Color.fromRGBO(246, 246, 246, 1),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 14.w, top: 3.w),
            child: Image.asset(
              'assets/icons/pb_icon_a@3x.png',
              width: 9.w,
              height: 11.w,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 37.w, top: 0.w),
            child: Text(
              this.scheduleTime,
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.54),
                  fontSize: 10.sp,
                  fontFamily: 'PingFangSC-Regular'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 37.w, top: 22.w),
            child: Container(
              width: 321.w,
              height: 55.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4.w),
              ),
              child: Stack(children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 16.w, top: 18.w),
                  child: Text(
                    this.scheduleContent,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.85),
                        fontSize: 14.sp,
                        fontFamily: 'PingFangSC-Regular'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 240.w, top: 19.w),
                  child: Container(
                    //color: Colors.red,
                    width: 41.w,
                    height: 18.w,
                    decoration: BoxDecoration(
                      color: this.isEnd
                          ? Color.fromRGBO(236, 236, 236, 1)
                          : Color.fromRGBO(0, 145, 255, 1),
                      borderRadius: BorderRadius.circular(16.w),
                    ),
                    child: Center(
                      child: Text(
                        this.isEnd ? '结束' : '开始',
                        style: TextStyle(
                            color: this.isEnd
                                ? Color.fromRGBO(0, 145, 255, 1)
                                : Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 11.sp,
                            fontFamily: 'PingFangSC-Regular'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 294.w, top: 20.w),
                  child: Image.asset(
                    'assets/icons/zy_icon_delete@3x.png',
                    width: 15.w,
                    height: 15.w,
                  ),
                ),
              ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 16.w),
            child: Image.asset(
              this.isLine ? 'assets/icons/pb_icon_line@3x.png' : '',
              width: 5.w,
              height: 90.w,
            ),
          ),
        ],
      ),
    );
  }
}
