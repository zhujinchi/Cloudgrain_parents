import 'package:Cloudgrain_parents/screens/home/homeworkchart/home_homework_chart.dart';
import 'package:Cloudgrain_parents/screens/home/studyplanchart/studyplan_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:async';

class StudyPlanBoardScreen extends StatefulWidget {
  @override
  StudyPlanBoardScreenState createState() => StudyPlanBoardScreenState();
}

class StudyPlanBoardScreenState extends State<StudyPlanBoardScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
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
        actions: <Widget>[
          InkWell(
            onTap: () {},
            child: Center(
              child: Text(
                '选择日期   ',
                style: TextStyle(
                    color: Color.fromRGBO(0, 145, 255, 1),
                    fontSize: 16.sp,
                    fontFamily: 'PingFangSC-Regular'),
              ),
            ),
            highlightColor: Colors.transparent, // 透明色
            splashColor: Colors.transparent, // 透明色
          )
        ],
        title: Text(
          '学习计划',
          style: TextStyle(
              color: Color.fromRGBO(15, 32, 67, 1),
              fontSize: 18.w,
              fontFamily: 'PingFangSC-Medium'),
        ),
      ),
      body: Container(
        child: _buildCheckSelector(),
      ),
    );
  }

  Container _buildCheckSelector() {
    return Container(
      color: Colors.white,
      //padding: EdgeInsets.fromLTRB(0, 10.w, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            //后期代码优化
            padding: EdgeInsets.only(top: 16.w),
            width: 375.w,
            height: 46.w,
            child: TabBar(
                isScrollable: true,
                indicatorColor: Color(0xFF0091FF),
                indicatorWeight: 2.0,
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: Color.fromRGBO(13, 14, 16, 1),
                labelStyle: TextStyle(
                    color: Color.fromRGBO(0, 145, 255, 1), fontSize: 15.sp),
                labelColor: Color.fromRGBO(0, 145, 255, 1),
                controller: this._tabController,
                tabs: <Widget>[
                  Tab(text: '整体分析'),
                  Tab(text: '详情查看'),
                ]),
          ),
          Container(
            // 导航栏高度103
            height: 667.h - 46.w - 103,
            //后期代码优化
            child: TabBarView(
                controller: this._tabController,
                children: <Widget>[StudyPlanBriefCharts(), Container()]),
          )
        ],
      ),
    );
  }

  Future<void> _refresh() async {
    await Future<Null>.delayed(Duration(seconds: 3), () {
      print('刷新');
      setState(() {});
      return null;
    });
  }
}
