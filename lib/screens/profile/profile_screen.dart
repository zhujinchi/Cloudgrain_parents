import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:Cloudgrain_parents/config/palette.dart';
import 'package:Cloudgrain_parents/config/styles.dart';
import 'package:Cloudgrain_parents/data/data.dart';
import 'package:Cloudgrain_parents/widgets/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(375, 667), allowFontScaling: false);
    return Scaffold(
        backgroundColor: Color.fromRGBO(247, 248, 252, 1),
        appBar: AppBar(
          brightness: Brightness.light,
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          elevation: 0.8,
          automaticallyImplyLeading: false,
        ),
        //内容区域
        body: RefreshIndicator(
          onRefresh: _refresh,
          child: CustomScrollView(
            //physics: ClampingScrollPhysics(),
            slivers: <Widget>[
              _buildProfileCard(),
              _buildSetLabels(),
              _buildLogOutButton(),
              _buildCurrentEditionLabel(),
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

  SliverToBoxAdapter _buildProfileCard() {
    return SliverToBoxAdapter(
      child: Container(
        width: 375.w,
        height: 117.w,
        color: Color.fromRGBO(255, 255, 255, 1),
        padding: EdgeInsets.fromLTRB(25.w, 0.w, 25.w, 0),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(25.w, 30.w, 0, 0),
              child: Container(
                width: 61.w,
                height: 61.w,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(30.5.w),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(115.w, 30.w, 0, 0),
              child: Text(
                '戴维森',
                style: TextStyle(
                    color: Color.fromRGBO(58, 61, 79, 1),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'PingFangSC-Medium'),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(173.w, 34.w, 0, 0),
              child: Image.asset(
                'assets/icons/my_sz_icon_a@3x.png',
                width: 7.w,
                height: 11.w,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(115.w, 55.w, 0, 0),
              child: Text(
                '孩子：小佩奇',
                style: TextStyle(
                    color: Color.fromRGBO(59, 61, 79, 0.83),
                    fontSize: 12.sp,
                    fontFamily: 'PingFangSC-Regular'),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(114.w, 78.w, 0, 0),
              child: Text(
                '武汉市第十七中学',
                style: TextStyle(
                    color: Color.fromRGBO(59, 61, 79, 0.83),
                    fontSize: 12.sp,
                    fontFamily: 'PingFangSC-Regular'),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(230.w, 78.w, 0, 0),
              child: Text(
                '高一（3）班',
                style: TextStyle(
                    color: Color.fromRGBO(59, 61, 79, 0.83),
                    fontSize: 12.sp,
                    fontFamily: 'PingFangSC-Regular'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildSetLabels() {
    return SliverToBoxAdapter(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: 375.w,
              height: 15.w,
              color: Color.fromRGBO(247, 248, 252, 1),
            ),
            //孩子班级
            setLabelsWithPath('assets/icons/my_icon_a@3x.png', '孩子班级'),
            Container(
              width: 375.w,
              height: 2.w,
              color: Color.fromRGBO(239, 239, 239, 1),
            ),
            //孩子老师
            setLabelsWithPath('assets/icons/my_icon_h@3x.png', '孩子老师'),
            Container(
              width: 375.w,
              height: 2.w,
              color: Color.fromRGBO(239, 239, 239, 1),
            ),
            //我的积分
            setLabelsWithPath('assets/icons/my_icon_k@3x.png', '我的积分'),
            Container(
              width: 375.w,
              height: 2.w,
              color: Color.fromRGBO(239, 239, 239, 1),
            ),
            //我的孩子
            setLabelsWithPath('assets/icons/my_icon_g@3x.png', '我的孩子'),
            Container(
              width: 375.w,
              height: 2.w,
              color: Color.fromRGBO(239, 239, 239, 1),
            ),
            //消息通知
            setLabelsWithPath('assets/icons/my_icon_i@3x.png', '消息通知'),
            Container(
              width: 375.w,
              height: 2.w,
              color: Color.fromRGBO(239, 239, 239, 1),
            ),
            //联系我们
            setLabelsWithPath('assets/icons/my_icon_f@3x.png', '联系我们'),
            Container(
              width: 375.w,
              height: 2.w,
              color: Color.fromRGBO(239, 239, 239, 1),
            ),
            //设置
            setLabelsWithPath('assets/icons/my_icon_j@3x.png', '设置'),
            Container(
              width: 375.w,
              height: 2.w,
              color: Color.fromRGBO(239, 239, 239, 1),
            ),

            Container(
              width: 375.w,
              height: 15.w,
              color: Color.fromRGBO(247, 248, 252, 1),
            ),
          ],
        ),
      ),
    );
  }

  Container setLabelsWithPath(String path, String title) {
    return Container(
      width: 375.w,
      height: 62.w,
      padding: EdgeInsets.fromLTRB(24.w, 18.w, 14.w, 18.w),
      color: Color.fromRGBO(255, 255, 255, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Image.asset(
                  path,
                  width: 26.w,
                  height: 26.w,
                ),
                Container(
                  width: 14.w,
                  height: 62.w,
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: Color.fromRGBO(26, 59, 52, 1),
                      fontSize: 14.sp,
                      fontFamily: 'PingFangSC-Regular'),
                )
              ],
            ),
          ),
          Center(
            child: Image.asset(
              'assets/icons/my_sz_icon_a@3x.png',
              width: 12.w,
              height: 12.w,
            ),
          )
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildLogOutButton() {
    return SliverToBoxAdapter(
      child: Container(
        width: 375.w,
        height: 50.w,
        color: Color.fromRGBO(255, 255, 255, 1),
        child: Center(
          child: Text(
            '退出登录',
            style: TextStyle(
                color: Color.fromRGBO(224, 32, 32, 1),
                fontSize: 15.sp,
                fontFamily: 'PingFangSC-Regular'),
          ),
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildCurrentEditionLabel() {
    return SliverToBoxAdapter(
      child: Column(
        children: <Widget>[
          Container(
            width: 375.w,
            height: 20.w,
          ),
          Container(
            child: Center(
              // width: 68.w,
              // height: 20.w,
              //padding: EdgeInsets.only(top: 7.w),
              child: Text(
                '当前版本1.01',
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                    fontSize: 10.sp,
                    fontFamily: 'PingFangSC-Regular'),
              ),
            ),
          ),
          Container(
            width: 375.w,
            height: 20.w,
          ),
        ],
      ),
    );
  }
}
