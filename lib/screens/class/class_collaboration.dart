import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../screens.dart';
import 'dart:async';

class ClassColleborationScreen extends StatefulWidget {
  @override
  ClassColleborationScreenState createState() =>
      ClassColleborationScreenState();
}

class ClassColleborationScreenState extends State<ClassColleborationScreen> {
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
            '我的收藏',
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
            padding: EdgeInsets.only(left: 81.w, top: 78.w),
            child: Image.asset(
              'assets/images/my_air_illustration@3x.png',
              width: 215.w,
              height: 215.w,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 142.w, top: 322.w),
            child: Text(
              '暂无收藏',
              style: TextStyle(
                  color: Color.fromRGBO(155, 157, 161, 1),
                  fontSize: 18.sp,
                  fontFamily: 'PingFangSC-Regular'),
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
