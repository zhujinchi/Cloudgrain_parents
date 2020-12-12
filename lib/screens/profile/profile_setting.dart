import 'package:Cloudgrain_parents/screens/read/read_stimulate_setting.dart';
import 'package:Cloudgrain_parents/widgets/study_bookList.dart';
import 'package:Cloudgrain_parents/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileSettingScreen extends StatefulWidget {
  @override
  _ProfileSettingScreenState createState() => _ProfileSettingScreenState();
}

class _ProfileSettingScreenState extends State<ProfileSettingScreen>
    with SingleTickerProviderStateMixin {
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
            color: Colors.grey,
            iconSize: 28.0,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            '设置',
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
            padding: EdgeInsets.only(left: 25.w, top: 24.w),
            child: Text(
              '清除缓存',
              style: TextStyle(
                  color: Color.fromRGBO(92, 92, 92, 1),
                  fontSize: 14.sp,
                  fontFamily: 'PingFangSC-Regular'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 303.w, top: 27.w),
            child: Text(
              '0.9M',
              style: TextStyle(
                  color: Color.fromRGBO(92, 92, 92, 1),
                  fontSize: 12.sp,
                  fontFamily: 'PingFangSC-Regular'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.w, top: 71.w),
            child: Text(
              '关于我们',
              style: TextStyle(
                  color: Color.fromRGBO(92, 92, 92, 1),
                  fontSize: 14.sp,
                  fontFamily: 'PingFangSC-Regular'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.w, top: 119.w),
            child: Text(
              '用户服务协议',
              style: TextStyle(
                  color: Color.fromRGBO(92, 92, 92, 1),
                  fontSize: 14.sp,
                  fontFamily: 'PingFangSC-Regular'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 27.w, top: 55.w),
            child: Container(
              width: 322.w,
              height: 1.w,
              color: Color.fromRGBO(248, 248, 248, 1),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 27.w, top: 104.w),
            child: Container(
              width: 322.w,
              height: 1.w,
              color: Color.fromRGBO(248, 248, 248, 1),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 340.w, top: 28.w),
            child: Image.asset(
              'assets/icons/my_icon_return@3x.png',
              width: 14.w,
              height: 14.w,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 340.w, top: 74.w),
            child: Image.asset(
              'assets/icons/my_icon_return@3x.png',
              width: 14.w,
              height: 14.w,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 340.w, top: 121.w),
            child: Image.asset(
              'assets/icons/my_icon_return@3x.png',
              width: 14.w,
              height: 14.w,
            ),
          ),
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
