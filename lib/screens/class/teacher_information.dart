import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../screens.dart';
import 'dart:async';

class TeacherInformationScreen extends StatefulWidget {
  @override
  TeacherInformationScreenState createState() =>
      TeacherInformationScreenState();
}

class TeacherInformationScreenState extends State<TeacherInformationScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

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
            '老师详情',
            style: TextStyle(
                color: Color.fromRGBO(15, 32, 67, 1),
                fontSize: 18.w,
                fontFamily: 'PingFangSC-Medium'),
          ),
        ),
        body: RefreshIndicator(
          onRefresh: _refresh,
          child: CustomScrollView(
            slivers: <Widget>[
              _buildDataBoard(),
              _buildDetailsBoard(),
            ],
          ),
        ));
  }

  Widget _buildDataBoard() {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(left: 16.w, right: 16.w),
        width: 343.w,
        height: 117.w,
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 145, 255, 1),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.w), topRight: Radius.circular(40.w)),
        ),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 18.w, top: 45.w),
              child: Container(
                width: 47.w,
                height: 47.w,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(23.5.w),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 72.w, top: 47.w),
              child: Text(
                '名字',
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 18.sp,
                    fontFamily: 'PingFangSC-Medium'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 72.w, top: 70.w),
              child: Text(
                '教龄3年｜武汉大学硕士',
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 14.sp,
                    letterSpacing: 1.27.sp,
                    fontFamily: 'PingFangSC-Regular'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 256.w, top: 42.w),
              child: Image.asset(
                'assets/images/lsxq_banner@3x.png',
                width: 87.w,
                height: 75.w,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailsBoard() {
    return SliverToBoxAdapter(
        child: Stack(children: <Widget>[
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
              height: 776.w,
              color: Colors.white,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 122.w),
                    child: Container(
                      width: 375.w,
                      height: 6.w,
                      color: Color.fromRGBO(246, 246, 246, 1),
                    ),
                  )
                ],
              ))),
      Padding(
        padding: EdgeInsets.only(left: 16.w, top: 22.w),
        child: Row(
          children: <Widget>[
            Container(
                width: 6.w,
                height: 12.w,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 145, 255, 1),
                  borderRadius: BorderRadius.circular(3.w),
                )),
            Container(
              width: 8.w,
            ),
            Text(
              '教学科目',
              style: TextStyle(
                  color: Color.fromRGBO(15, 32, 67, 1),
                  fontSize: 14.sp,
                  fontFamily: 'PingFangSC-Regular'),
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 16.w, top: 55.w),
        child: Row(
          children: <Widget>[
            Container(
                width: 6.w,
                height: 12.w,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 145, 255, 1),
                  borderRadius: BorderRadius.circular(3.w),
                )),
            Container(
              width: 8.w,
            ),
            Text(
              '好评度',
              style: TextStyle(
                  color: Color.fromRGBO(15, 32, 67, 1),
                  fontSize: 14.sp,
                  fontFamily: 'PingFangSC-Regular'),
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 16.w, top: 88.w),
        child: Row(
          children: <Widget>[
            Container(
                width: 6.w,
                height: 12.w,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 145, 255, 1),
                  borderRadius: BorderRadius.circular(3.w),
                )),
            Container(
              width: 8.w,
            ),
            Text(
              '教学特点',
              style: TextStyle(
                  color: Color.fromRGBO(15, 32, 67, 1),
                  fontSize: 14.sp,
                  fontFamily: 'PingFangSC-Regular'),
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 16.w, top: 177.w),
        child: Row(
          children: <Widget>[
            Container(
                width: 6.w,
                height: 12.w,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 145, 255, 1),
                  borderRadius: BorderRadius.circular(3.w),
                )),
            Container(
              width: 8.w,
            ),
            Text(
              '擅长科目',
              style: TextStyle(
                  color: Color.fromRGBO(15, 32, 67, 1),
                  fontSize: 14.sp,
                  fontFamily: 'PingFangSC-Regular'),
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 16.w, top: 488.w),
        child: Row(
          children: <Widget>[
            Container(
                width: 6.w,
                height: 12.w,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 145, 255, 1),
                  borderRadius: BorderRadius.circular(3.w),
                )),
            Container(
              width: 8.w,
            ),
            Text(
              '约课',
              style: TextStyle(
                  color: Color.fromRGBO(15, 32, 67, 1),
                  fontSize: 14.sp,
                  fontFamily: 'PingFangSC-Regular'),
            ),
          ],
        ),
      ),
      Padding(
          padding: EdgeInsets.fromLTRB(94.w, 23.w, 0, 0),
          child: Container(
              width: 38.w,
              height: 18.w,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(191, 230, 150, 1),
                  borderRadius: BorderRadius.circular(9.w)),
              child: Center(
                  child: Text(
                '数学',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.sp,
                    fontFamily: 'PingFangSC-Regular'),
              )))),
      Padding(
          padding: EdgeInsets.fromLTRB(138.w, 23.w, 0, 0),
          child: Container(
              width: 38.w,
              height: 18.w,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(45, 144, 171, 1),
                  borderRadius: BorderRadius.circular(9.w)),
              child: Center(
                  child: Text(
                '物理',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.sp,
                    fontFamily: 'PingFangSC-Regular'),
              )))),
      Padding(
          padding: EdgeInsets.fromLTRB(182.w, 23.w, 0, 0),
          child: Container(
              width: 38.w,
              height: 18.w,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(251, 162, 111, 1),
                  borderRadius: BorderRadius.circular(9.w)),
              child: Center(
                  child: Text(
                '化学',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.sp,
                    fontFamily: 'PingFangSC-Regular'),
              )))),
      Padding(
        padding: EdgeInsets.only(left: 72.w, top: 58.w),
        child: Image.asset(
          'assets/images/temp_stars@3x.png',
          width: 90.w,
          height: 15.w,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 94.w, top: 88.w),
        child: Text(
          '风趣幽默，寓教于乐',
          style: TextStyle(
              color: Color.fromRGBO(164, 173, 200, 1),
              fontSize: 12.sp,
              fontFamily: 'PingFangSC-Regular'),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 205.w),
        child: Image.asset(
          'assets/images/temp_teacher_details.png',
          width: 375.w,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 16.w, top: 523.w),
        child: Container(
          width: 343.w,
          height: 116.w,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6.w),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(236, 236, 236, 1),
                    offset: Offset(0, 2.w), //阴影xy轴偏移量
                    blurRadius: 7.w, //阴影模糊程度
                    spreadRadius: 0 //阴影扩散程度
                    )
              ]),
          child: Image.asset(
            'assets/images/temp_class_set@2x.png',
            width: 343.w,
            height: 116.w,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 16.w, top: 659.w),
        child: Container(
          width: 343.w,
          height: 116.w,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6.w),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(236, 236, 236, 1),
                    offset: Offset(0, 2.w), //阴影xy轴偏移量
                    blurRadius: 7.w, //阴影模糊程度
                    spreadRadius: 0 //阴影扩散程度
                    )
              ]),
          child: Image.asset(
            'assets/images/temp_class_set@2x.png',
            width: 343.w,
            height: 116.w,
          ),
        ),
      ),
    ]));
  }

  Future<void> _refresh() async {
    await Future<Null>.delayed(Duration(seconds: 3), () {
      print('刷新');
      setState(() {});
      return null;
    });
  }
}
