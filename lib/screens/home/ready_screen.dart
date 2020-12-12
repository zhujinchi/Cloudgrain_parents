import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_cards/infinite_cards.dart';
import '../screens.dart';
import 'dart:async';

class ReadyScreen extends StatefulWidget {
  @override
  ReadyScreenState createState() => ReadyScreenState();
}

class ReadyScreenState extends State<ReadyScreen> {
  InfiniteCardsController _controller;
  int count;
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    this.count = 0;
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
            '待开始',
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
                  '选择日期      ',
                  style: TextStyle(
                      color: Color.fromRGBO(0, 145, 255, 1),
                      fontSize: 15.sp,
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
            child: Text(
              '作业类型：',
              style: TextStyle(
                  color: Color.fromRGBO(155, 157, 161, 1),
                  fontSize: 14.sp,
                  fontFamily: 'PingFangSC-Regular'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 82.w, top: 15.w),
            child: Text(
              '音视频作业',
              style: TextStyle(
                  color: Color.fromRGBO(0, 145, 255, 1),
                  fontSize: 14.sp,
                  fontFamily: 'PingFangSC-Regular'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 160.w, top: 16.w),
            child: Image.asset(
              'assets/images/icon_unfold_a@3x.png',
              width: 18.w,
              height: 18.w,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 16.w, top: 51.w),
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
              padding: EdgeInsets.only(left: 82.w, top: 51.w),
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
              padding: EdgeInsets.only(left: 148.w, top: 51.w),
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
            padding: EdgeInsets.only(left: 16.w, top: 92.w),
            child: Container(
              width: 275.w,
              height: 26.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3.w),
                  border: Border.all(
                      width: 1.w, color: Color.fromRGBO(155, 157, 161, 0.5))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 300.w, top: 92.w),
            child: Container(
              //color: Colors.red,
              width: 59.w,
              height: 26.w,
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: MaterialButton(
                child: Text(
                  '搜索',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'PingFangSC-Medium',
                    fontSize: 12.sp,
                  ),
                ),
                elevation: 0.0,
                color: Color.fromRGBO(104, 212, 185, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.w)),
                //borderSide: BorderSide(color: Colors.orange, width: 1),
                onPressed: () {},
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.w, top: 172.w),
            child: Container(
              width: 325.w,
              height: 238.w,
              color: Color.fromRGBO(248, 250, 255, 1),
            ),
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
