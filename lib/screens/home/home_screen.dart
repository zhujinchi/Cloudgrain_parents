import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Cloudgrain_parents/data/data.dart';
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
      body: CustomScrollView(
        slivers: <Widget>[
          _buildBackHome(),
          _buildAdsBanner(),
          _buildButtons(),
          _buildSchedule(),
          _buildHomeworkTitle(),
          _buildHomeworkGrid()
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildBackHome() {
    return SliverToBoxAdapter(
      child: Container(
        width: 375.w,
        height: 184.w,
        padding: EdgeInsets.fromLTRB(16.w, 16.w, 16.w, 0),
        child: Column(
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
            Row(
              children: <Widget>[
                Container(
                  width: 171.w,
                  height: 36.w,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(2, 160, 241, 1),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(6.w)),
                  ),
                ),
                Container(
                  width: 172.w,
                  height: 36.w,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 128, 88, 1),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(6.w)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildAdsBanner() {
    return SliverToBoxAdapter(
      child: Container(
        width: 375.w,
        height: 98.w,
        padding: EdgeInsets.fromLTRB(16.w, 12.w, 16.w, 0),
        child: Container(
          width: 343.w,
          height: 86.w,
          color: Color.fromRGBO(255, 197, 66, 1),
        ),
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
                  'assets/icons/yk_icon_c@3x.png',
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
                  'assets/icons/yk_icon_d@3x.png',
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
                    Column(
                      children: <Widget>[
                        Container(
                          width: 96.w,
                          height: 20.w,
                          child: Row(
                            children: <Widget>[
                              Container(),
                            ],
                          ),
                        ),
                        Text('123'),
                        Text('123'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('data'),
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
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: programmeList.length,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          return Programme(data: programmeList[index]);
        },
      ),
    );
  }
}
