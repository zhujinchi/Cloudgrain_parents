import 'package:Cloudgrain_parents/screens/home/schedule_screen.dart';
import 'package:Cloudgrain_parents/widgets/banner.dart';
import 'package:Cloudgrain_parents/widgets/bottomSheet_dialog.dart';
import 'package:Cloudgrain_parents/widgets/homework_card.dart';
import 'package:Cloudgrain_parents/widgets/warnDialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Cloudgrain_parents/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:Cloudgrain_parents/widgets/widgets.dart';

import 'dart:ui' as ui;
import 'dart:async';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          title: Text(
            '云辅导',
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
              _buildBackHome(),
              _buildAdsBanner(),
              _buildButtons(),
              _buildSchedule(),
              _buildHomeworkTitle(),
              _buildHomeworkGrid()
            ],
          ),
        ));
  }

  Future<void> _refresh() async {
    await Future<Null>.delayed(Duration(seconds: 3), () {
      print('刷新');
      setState(() {});
      return null;
    });
  }

  SliverToBoxAdapter _buildBackHome() {
    return SliverToBoxAdapter(
      child: Container(
        width: 375.w,
        height: 184.w,
        padding: EdgeInsets.fromLTRB(16.w, 16.w, 16.w, 0),
        child: Container(
          width: 343.w,
          height: 168.w,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(7.w),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(192, 192, 192, 0.5),
                    offset: Offset(0, 2.w), //阴影xy轴偏移量
                    blurRadius: 7.w, //阴影模糊程度
                    spreadRadius: 0 //阴影扩散程度
                    )
              ]),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: 343.w,
                    height: 132.w,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(84, 104, 231, 1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6.w),
                          topRight: Radius.circular(6.w)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(211.w, 34.w, 0, 0),
                    child: Opacity(
                      opacity: 0.4,
                      child: Image.asset(
                        'assets/images/yk_banner_a@3x.png',
                        width: 132.w,
                        height: 98.w,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Container(
                    width: 343.w,
                    height: 132.w,
                    padding: EdgeInsets.fromLTRB(72.w, 37.w, 72.w, 30.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        OutlineButton(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.w)),
                            onPressed: () {},
                            child: Text(
                              '回家看看',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.sp,
                                  fontFamily: 'PingFangSC-Medium'),
                            )),
                        Text(
                          '进入回家看看，家庭情况实时监控',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.sp,
                              fontFamily: 'PingFangSC-Regular'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      showDialog(
                          barrierDismissible: true, //是否点击空白区域关闭对话框,默认为true，可以关闭
                          context: context,
                          builder: (BuildContext context) {
                            var list = List();
                            list.add('视频通话'); //显示的选择list
                            list.add('语音通话');
                            return CommonBottomSheet(
                              list: list,
                              onItemClickListener: (index) async {
                                //回调方法
                                Navigator.of(context).pop(1);
                                if (index == 0) {
                                  //
                                } else {
                                  //
                                }
                              },
                            );
                          });
                    },
                    child: Container(
                      width: 171.w,
                      height: 36.w,
                      padding: EdgeInsets.only(left: 45.w),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(2, 160, 241, 1),
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(6.w)),
                      ),
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/icons/yk_banner_icon_a@3x.png',
                            width: 26.w,
                            height: 26.w,
                          ),
                          Text(
                            '视频通话',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.sp,
                                fontFamily: 'PingFangSC-Regular'),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                          barrierDismissible: true, //是否点击空白区域关闭对话框,默认为true，可以关闭
                          context: context,
                          builder: (BuildContext context) {
                            return WarnDialog();
                          });
                    },
                    child: Container(
                      width: 172.w,
                      height: 36.w,
                      padding: EdgeInsets.only(left: 45.w),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 128, 88, 1),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(6.w)),
                      ),
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/icons/yk_banner_icon_b@3x.png',
                            width: 26.w,
                            height: 26.w,
                          ),
                          Text(
                            '用户提醒',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.sp,
                                fontFamily: 'PingFangSC-Regular'),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildAdsBanner() {
    return SliverToBoxAdapter(
      child: Container(
        width: 375.w,
        height: 98.w,
        child: HomeBanner(),
      ),
    );
  }

  SliverToBoxAdapter _buildButtons() {
    return SliverToBoxAdapter(
      child: Container(
        width: 375.w,
        height: 77.w,
        padding: EdgeInsets.fromLTRB(16.w, 9.w, 16.w, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  'assets/icons/yk_icon_a@3x.png',
                  width: 42.w,
                  height: 42.w,
                ),
                Text(
                  '待开始',
                  style: TextStyle(
                      color: Color.fromRGBO(15, 32, 67, 1),
                      fontSize: 11.sp,
                      fontFamily: 'PingFangSC-Regular'),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  'assets/icons/yk_icon_b@3x.png',
                  width: 42.w,
                  height: 42.w,
                ),
                Text(
                  '已完成',
                  style: TextStyle(
                      color: Color.fromRGBO(15, 32, 67, 1),
                      fontSize: 11.sp,
                      fontFamily: 'PingFangSC-Regular'),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  'assets/icons/yk_icon_c@3x.png',
                  width: 42.w,
                  height: 42.w,
                ),
                Text(
                  '错题集',
                  style: TextStyle(
                      color: Color.fromRGBO(15, 32, 67, 1),
                      fontSize: 11.sp,
                      fontFamily: 'PingFangSC-Regular'),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  'assets/icons/yk_icon_d@3x.png',
                  width: 42.w,
                  height: 42.w,
                ),
                Text(
                  '作业报表',
                  style: TextStyle(
                      color: Color.fromRGBO(15, 32, 67, 1),
                      fontSize: 11.sp,
                      fontFamily: 'PingFangSC-Regular'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildSchedule() {
    return SliverToBoxAdapter(
      child: Container(
        width: 375.w,
        height: 125.w,
        padding: EdgeInsets.fromLTRB(16.w, 13.w, 16.w, 0),
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 22.w),
              child: Container(
                width: 343.w,
                height: 90.w,
                padding: EdgeInsets.fromLTRB(87.w, 12.w, 18.w, 24.w),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(236, 246, 255, 1),
                  borderRadius: BorderRadius.all(Radius.circular(8.w)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        GotoScheduleScreen(context);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            width: 96.w,
                            height: 20.w,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: 5.w,
                                  height: 14.w,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(99, 103, 234, 1),
                                    borderRadius: BorderRadius.circular(2.5.w),
                                  ),
                                ),
                                Container(
                                  width: 5.w,
                                  height: 5.w,
                                ),
                                Text(
                                  '小佩奇的日程',
                                  style: TextStyle(
                                      color: Color.fromRGBO(15, 32, 67, 1),
                                      fontSize: 14.sp,
                                      fontFamily: 'PingFangSC-Regular'),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 5.w,
                            height: 2.w,
                          ),
                          Row(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(left: 10.w)),
                              Text(
                                '诗文朗读',
                                style: TextStyle(
                                    color: Color.fromRGBO(15, 32, 67, 0.49),
                                    fontSize: 11.sp,
                                    fontFamily: 'PingFangSC-Regular'),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(left: 10.w)),
                              Text(
                                '8:00～9:30',
                                style: TextStyle(
                                    color: Color.fromRGBO(15, 32, 67, 0.49),
                                    fontSize: 11.sp,
                                    fontFamily: 'PingFangSC-Regular'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            GotoScheduleScreen(context);
                          },
                          child: Container(
                            width: 39.w,
                            height: 16.w,
                            child: Row(
                              children: <Widget>[
                                Text(
                                  '更多',
                                  style: TextStyle(
                                      color: Color.fromRGBO(15, 32, 67, 0.49),
                                      fontSize: 11.sp,
                                      fontFamily: 'PingFangSC-Regular'),
                                ),
                                Container(
                                  width: 6.w,
                                ),
                                Image.asset(
                                  'assets/icons/zy_icon_return@3x.png',
                                  width: 10.w,
                                  height: 10.w,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 78.w,
                          height: 20.w,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(99, 103, 234, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.w)),
                          ),
                          child: Center(
                            child: Text(
                              '学习计划报表',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11.sp,
                                  fontFamily: 'PingFangSC-Regular'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Image.asset(
                'assets/images/yk_banner_c@3x.png',
                width: 68.w,
                height: 100.w,
                fit: BoxFit.fitHeight,
              ),
            )
          ],
        ),
      ),
    );
  }

  void GotoScheduleScreen(BuildContext context) {
    Navigator.of(context)
        .push(CupertinoPageRoute(builder: (context) => ScheduleScreen()));
  }

  SliverToBoxAdapter _buildHomeworkTitle() {
    return SliverToBoxAdapter(
      child: Container(
        width: 375.w,
        height: 41.w,
        padding: EdgeInsets.fromLTRB(16.w, 11.w, 234.w, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset(
              'assets/images/operation_zyjx@3x.png',
              width: 32.w,
              height: 30.w,
            ),
            Text(
              '作业精选',
              style: TextStyle(
                  color: Color.fromRGBO(15, 32, 67, 1),
                  fontSize: 20.sp,
                  fontFamily: 'PingFangSC-Regular'),
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildHomeworkGrid() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.only(top: 13.w, bottom: 13.w),
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: programmeList.length,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 12),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 11.w,
            crossAxisSpacing: 14.w,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            //return Programme(data: programmeList[index]);
            return HomeWorkCard(
              homeworkContent: '123',
              homeworkType: '123',
              studentName: '123',
              studentSchool: '123',
              studentClass: '123',
            );
          },
        ),
      ),
    );
  }
}
