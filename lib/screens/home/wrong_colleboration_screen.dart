import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../screens.dart';
import 'dart:async';

class WrongColleborationScreen extends StatefulWidget {
  @override
  WrongColleborationScreenState createState() =>
      WrongColleborationScreenState();
}

class WrongColleborationScreenState extends State<WrongColleborationScreen> {
  int count;
  int timeType;
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    this.count = 0;
    this.timeType = 0;
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
            '错题集',
            style: TextStyle(
                color: Color.fromRGBO(15, 32, 67, 1),
                fontSize: 18.w,
                fontFamily: 'PingFangSC-Medium'),
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
        ),
        body: RefreshIndicator(
          onRefresh: _refresh,
          child: CustomScrollView(
            slivers: <Widget>[
              _buildView(),
            ],
          ),
        ));
  }

  SliverToBoxAdapter _buildView() {
    return SliverToBoxAdapter(
      child: Stack(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(left: 16.w, top: 15.w),
              child: InkWell(
                onTap: () {
                  setState(() {
                    this.count = 0;
                  });
                },
                child: Column(
                  children: <Widget>[
                    Text(
                      '语文',
                      style: TextStyle(
                          color: this.count == 0
                              ? Color.fromRGBO(104, 212, 185, 1)
                              : Color.fromRGBO(155, 157, 161, 1),
                          fontSize: 15.sp,
                          fontFamily: 'PingFangSC-Regular'),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 2.w),
                      width: 30.w,
                      height: 2.w,
                      color: this.count == 0
                          ? Color.fromRGBO(104, 212, 185, 1)
                          : Colors.white,
                    )
                  ],
                ),
              )),
          Padding(
              padding: EdgeInsets.only(left: 82.w, top: 15.w),
              child: InkWell(
                onTap: () {
                  setState(() {
                    this.count = 1;
                  });
                },
                child: Column(
                  children: <Widget>[
                    Text(
                      '数学',
                      style: TextStyle(
                          color: this.count == 1
                              ? Color.fromRGBO(104, 212, 185, 1)
                              : Color.fromRGBO(155, 157, 161, 1),
                          fontSize: 15.sp,
                          fontFamily: 'PingFangSC-Regular'),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 2.w),
                      width: 30.w,
                      height: 2.w,
                      color: this.count == 1
                          ? Color.fromRGBO(104, 212, 185, 1)
                          : Colors.white,
                    )
                  ],
                ),
              )),
          Padding(
              padding: EdgeInsets.only(left: 148.w, top: 15.w),
              child: InkWell(
                onTap: () {
                  setState(() {
                    this.count = 2;
                  });
                },
                child: Column(
                  children: <Widget>[
                    Text(
                      '英语',
                      style: TextStyle(
                          color: this.count == 2
                              ? Color.fromRGBO(104, 212, 185, 1)
                              : Color.fromRGBO(155, 157, 161, 1),
                          fontSize: 15.sp,
                          fontFamily: 'PingFangSC-Regular'),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 2.w),
                      width: 30.w,
                      height: 2.w,
                      color: this.count == 2
                          ? Color.fromRGBO(104, 212, 185, 1)
                          : Colors.white,
                    )
                  ],
                ),
              )),
          Padding(
              padding: EdgeInsets.only(left: 16.w, top: 55.w),
              child: InkWell(
                onTap: () {
                  setState(() {
                    this.timeType = 0;
                  });
                },
                child: Column(
                  children: <Widget>[
                    Text(
                      '当日',
                      style: TextStyle(
                          color: this.timeType == 0
                              ? Color.fromRGBO(134, 104, 212, 1)
                              : Color.fromRGBO(155, 157, 161, 1),
                          fontSize: 15.sp,
                          fontFamily: 'PingFangSC-Regular'),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 2.w),
                      width: 30.w,
                      height: 2.w,
                      color: this.timeType == 0
                          ? Color.fromRGBO(134, 104, 212, 1)
                          : Colors.white,
                    )
                  ],
                ),
              )),
          Padding(
              padding: EdgeInsets.only(left: 82.w, top: 55.w),
              child: InkWell(
                onTap: () {
                  setState(() {
                    this.timeType = 1;
                  });
                },
                child: Column(
                  children: <Widget>[
                    Text(
                      '当周',
                      style: TextStyle(
                          color: this.timeType == 1
                              ? Color.fromRGBO(134, 104, 212, 1)
                              : Color.fromRGBO(155, 157, 161, 1),
                          fontSize: 15.sp,
                          fontFamily: 'PingFangSC-Regular'),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 2.w),
                      width: 30.w,
                      height: 2.w,
                      color: this.timeType == 1
                          ? Color.fromRGBO(134, 104, 212, 1)
                          : Colors.white,
                    )
                  ],
                ),
              )),
          Padding(
              padding: EdgeInsets.only(left: 16.w, top: 102.w),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 343.w,
                    height: 173.w,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(155, 157, 161, 1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6.w),
                          topRight: Radius.circular(6.w)),
                    ),
                  ),
                  Container(
                    width: 343.w,
                    height: 44.w,
                    color: Color.fromRGBO(240, 240, 240, 1),
                    child: Center(
                      child: Text(
                        '已修改',
                        style: TextStyle(
                            color: Color.fromRGBO(0, 145, 255, 1),
                            fontSize: 16.sp,
                            fontFamily: 'PingFangSC-Regular'),
                      ),
                    ),
                  )
                ],
              )),
          Padding(
              padding: EdgeInsets.only(left: 16.w, top: 335.w),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 343.w,
                    height: 173.w,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(155, 157, 161, 1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6.w),
                          topRight: Radius.circular(6.w)),
                    ),
                  ),
                  Container(
                    width: 343.w,
                    height: 44.w,
                    color: Color.fromRGBO(240, 240, 240, 1),
                    child: Center(
                      child: Text(
                        '未修改',
                        style: TextStyle(
                            color: Color.fromRGBO(0, 145, 255, 1),
                            fontSize: 16.sp,
                            fontFamily: 'PingFangSC-Regular'),
                      ),
                    ),
                  )
                ],
              )),
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
