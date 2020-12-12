import 'package:Cloudgrain_parents/screens/class/class_collaboration.dart';
import 'package:Cloudgrain_parents/screens/class/class_information_screen.dart';
import 'package:Cloudgrain_parents/widgets/class_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:Cloudgrain_parents/config/palette.dart';
import 'package:Cloudgrain_parents/config/styles.dart';
import 'package:Cloudgrain_parents/data/data.dart';
import 'package:Cloudgrain_parents/widgets/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';

class CloudClassScreen extends StatefulWidget {
  @override
  _CloudClassScreenState createState() => _CloudClassScreenState();
}

class _CloudClassScreenState extends State<CloudClassScreen> {
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
        backgroundColor: Color.fromRGBO(250, 249, 247, 1),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          elevation: 0.8,
          title: Text(
            '云课',
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
              _buildClassTitle(),
              _buildClassButtons(),
              _buildBlankPadding(),
              _buildSelectBar(),
              _buildClassList()
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

  SliverToBoxAdapter _buildClassTitle() {
    return SliverToBoxAdapter(
      child: Container(
        width: 375.w,
        height: 124.w,
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(16.w, 15.w, 16.w, 0),
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 33.w),
              child: Container(
                width: 310.w,
                height: 109.w,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(153, 211, 255, 1),
                  borderRadius: BorderRadius.circular(15.w),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.w),
              child: Image.asset(
                'assets/images/yk_banner_illustration@3x.png',
                width: 149.w,
                height: 86.w,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(123.w, 19.w, 0, 0),
              child: Container(
                width: 201.w,
                height: 72.w,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(15.w),
                ),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(19.w, 11.w, 0, 0),
                      child: Container(
                        width: 61.w,
                        height: 28.w,
                        child: Text(
                          '累计学习时长（小时）',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(164, 173, 200, 1),
                              fontSize: 10.sp,
                              fontFamily: 'PingFangSC-Regular'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(141.w, 11.w, 0, 0),
                      child: Container(
                        width: 41.w,
                        height: 28.w,
                        child: Text(
                          '上课总量 （课时）',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(164, 173, 200, 1),
                              fontSize: 10.sp,
                              fontFamily: 'PingFangSC-Regular'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(101.w, 16.w, 0, 0),
                      child: Container(
                        width: 1.w,
                        height: 40.w,
                        color: Color.fromRGBO(164, 173, 200, 1),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(37.w, 42.w, 0, 0),
                      child: Container(
                        width: 26.w,
                        height: 28.w,
                        child: Text(
                          '56',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(15, 32, 67, 1),
                              fontSize: 20.sp,
                              fontFamily: 'PingFangSC-Regular'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(149.w, 42.w, 0, 0),
                      child: Container(
                        width: 26.w,
                        height: 28.w,
                        child: Text(
                          '24',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(15, 32, 67, 1),
                              fontSize: 20.sp,
                              fontFamily: 'PingFangSC-Regular'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildClassButtons() {
    return SliverToBoxAdapter(
      child: Container(
        width: 375.w,
        height: 90.w,
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(19.w, 21.w, 19.w, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) => ClassInformationScreen(
                          inforType: '待缴费',
                        )));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset(
                    'assets/images/yk_zysc@3x.png',
                    width: 43.w,
                    height: 43.w,
                  ),
                  Text(
                    '待缴费',
                    style: TextStyle(
                        color: Color.fromRGBO(15, 32, 67, 1),
                        fontSize: 11.sp,
                        fontFamily: 'PingFangSC-Regular'),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) => ClassInformationScreen(
                          inforType: '待开始',
                        )));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset(
                    'assets/images/yk_dks@3x.png',
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
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) => ClassInformationScreen(
                          inforType: '已结束',
                        )));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset(
                    'assets/images/yk_yjs@3x.png',
                    width: 41.31.w,
                    height: 42.w,
                  ),
                  Text(
                    '已结束',
                    style: TextStyle(
                        color: Color.fromRGBO(15, 32, 67, 1),
                        fontSize: 11.sp,
                        fontFamily: 'PingFangSC-Regular'),
                  ),
                ],
              ),
            ),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(CupertinoPageRoute(
                      builder: (context) => ClassColleborationScreen()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/yk_wdsc@3x.png',
                      width: 43.w,
                      height: 43.w,
                    ),
                    Text(
                      '我的收藏',
                      style: TextStyle(
                          color: Color.fromRGBO(15, 32, 67, 1),
                          fontSize: 11.sp,
                          fontFamily: 'PingFangSC-Regular'),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildBlankPadding() {
    return SliverToBoxAdapter(
      child: Container(
        width: 375.w,
        height: 21.w,
        color: Colors.white,
      ),
    );
  }

  SliverToBoxAdapter _buildSelectBar() {
    return SliverToBoxAdapter(
      child: Container(
        width: 375.w,
        height: 40.w,
        padding: EdgeInsets.fromLTRB(18.w, 13.w, 185.w, 13.w),
        color: Color.fromRGBO(250, 249, 247, 1),
        child: Row(
          children: <Widget>[
            Text(
              '人气',
              style: TextStyle(
                  color: Color.fromRGBO(15, 32, 67, 1),
                  fontSize: 12.sp,
                  fontFamily: 'PingFangSC-Regular'),
            ),
            Container(
              width: 40.w,
            ),
            Text(
              '价格',
              style: TextStyle(
                  color: Color.fromRGBO(15, 32, 67, 1),
                  fontSize: 12.sp,
                  fontFamily: 'PingFangSC-Regular'),
            ),
            Container(
              width: 40.w,
            ),
            Text(
              '筛选',
              style: TextStyle(
                  color: Color.fromRGBO(15, 32, 67, 1),
                  fontSize: 12.sp,
                  fontFamily: 'PingFangSC-Regular'),
            ),
          ],
        ),
      ),
    );
  }

  SliverFixedExtentList _buildClassList() {
    return SliverFixedExtentList(
      itemExtent: 202.w,
      delegate:
          new SliverChildBuilderDelegate((BuildContext context, int index) {
        //创建列表项
        return new Container(
          alignment: Alignment.center,
          color: Colors.lightBlue[100 * (index % 9)],
          child: new Container(
            width: 375.w,
            height: 202.w,
            padding: EdgeInsets.fromLTRB(16.w, 8.w, 16.w, 8.w),
            color: Color.fromRGBO(250, 249, 247, 1),
            child: ClassCard(
              classPrice: 1,
              classWide: '123',
              classTime: '123',
              teacherName: '123',
              teachTime: '123',
              teachEducation: '123',
              teachScore: '123',
            ),
          ),
        );
      }, childCount: 10 //10个列表项
              ),
    );
  }
}
