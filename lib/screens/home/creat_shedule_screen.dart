import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreatScheduleScreen extends StatefulWidget {
  @override
  _CreatScheduleScreenState createState() => _CreatScheduleScreenState();
}

class _CreatScheduleScreenState extends State<CreatScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(375, 667), allowFontScaling: false);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0.8,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Color.fromRGBO(155, 157, 161, 1),
          iconSize: 28.0,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          '新建日程',
          style: TextStyle(
              color: Color.fromRGBO(59, 61, 79, 1),
              fontSize: 18.sp,
              fontFamily: 'PingFangSC-Medium'),
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          _buildDataBoard(),
          _buildScheduleInputBoard(),
        ],
      ),
    );
  }

  Widget _buildDataBoard() {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(left: 16.w, right: 16.w),
        width: 343.w,
        height: 120.w,
        color: Color.fromRGBO(0, 145, 255, 1),
        child: Stack(),
      ),
    );
  }

  Widget _buildScheduleInputBoard() {
    return SliverToBoxAdapter(
        child: Stack(
      children: <Widget>[
        Container(
            width: 375.w,
            height: 40.w,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.29),
                  offset: Offset(0, -1.w), //阴影xy轴偏移量
                  blurRadius: 10.w, //阴影模糊程度
                  spreadRadius: 0

                  ///阴影扩散程度
                  )
            ])),
        Padding(
          padding: EdgeInsets.only(top: 35.w),
          child: Container(
            width: 375.w,
            height: 440.w,
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 16.w, top: 42.w),
                    child: Container(
                        width: 6.w,
                        height: 12.w,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(104, 212, 185, 1),
                            borderRadius: BorderRadius.circular(3.w)))),
                Padding(
                  padding: EdgeInsets.only(left: 34.w, top: 35.w),
                  child: Text(
                    '开始时间',
                    style: TextStyle(
                        color: Color.fromRGBO(15, 32, 67, 1),
                        fontSize: 18.sp,
                        fontFamily: 'PingFangSC-Regular'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 34.w, top: 74.w),
                  child: Image.asset(
                    'assets/icons/zy_icon_time@3x.png',
                    width: 18.w,
                    height: 18.w,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 66.w, top: 74.w),
                  child: InkWell(
                    onTap: () {
                      //起始时间选择
                    },
                    child: Text(
                      '请选择日程开始的时间',
                      style: TextStyle(
                          color: Color.fromRGBO(155, 157, 161, 1),
                          fontSize: 14.sp,
                          fontFamily: 'PingFangSC-Regular'),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 66.w, top: 102.w),
                  child: Container(
                    width: 293.w,
                    height: 1.w,
                    color: Color.fromRGBO(237, 237, 237, 1),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 16.w, top: 134.w),
                    child: Container(
                        width: 6.w,
                        height: 12.w,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(104, 212, 185, 1),
                            borderRadius: BorderRadius.circular(3.w)))),
                Padding(
                  padding: EdgeInsets.only(left: 34.w, top: 127.w),
                  child: Text(
                    '结束时间',
                    style: TextStyle(
                        color: Color.fromRGBO(15, 32, 67, 1),
                        fontSize: 18.sp,
                        fontFamily: 'PingFangSC-Regular'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 34.w, top: 166.w),
                  child: Image.asset(
                    'assets/icons/zy_icon_time@3x.png',
                    width: 18.w,
                    height: 18.w,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 66.w, top: 166.w),
                  child: InkWell(
                    onTap: () {
                      //起始时间选择
                    },
                    child: Text(
                      '可选填',
                      style: TextStyle(
                          color: Color.fromRGBO(155, 157, 161, 1),
                          fontSize: 14.sp,
                          fontFamily: 'PingFangSC-Regular'),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 66.w, top: 194.w),
                  child: Container(
                    width: 293.w,
                    height: 1.w,
                    color: Color.fromRGBO(237, 237, 237, 1),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 16.w, top: 226.w),
                    child: Container(
                        width: 6.w,
                        height: 12.w,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(104, 212, 185, 1),
                            borderRadius: BorderRadius.circular(3.w)))),
                Padding(
                  padding: EdgeInsets.only(left: 34.w, top: 219.w),
                  child: Text(
                    '日程安排',
                    style: TextStyle(
                        color: Color.fromRGBO(15, 32, 67, 1),
                        fontSize: 18.sp,
                        fontFamily: 'PingFangSC-Regular'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 35.w, top: 256.w),
                  child: Container(
                    width: 324.w,
                    height: 82.w,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(246, 246, 246, 1),
                        borderRadius: BorderRadius.circular(4.w)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 45.w, top: 268.w),
                  child: TextField(maxLength: 30, maxLengthEnforced: true),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
