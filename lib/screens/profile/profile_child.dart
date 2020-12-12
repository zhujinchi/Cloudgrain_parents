import 'package:Cloudgrain_parents/screens/read/read_stimulate_setting.dart';
import 'package:Cloudgrain_parents/widgets/study_bookList.dart';
import 'package:Cloudgrain_parents/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileChildScreen extends StatefulWidget {
  @override
  _ProfileChildScreenState createState() => _ProfileChildScreenState();
}

class _ProfileChildScreenState extends State<ProfileChildScreen>
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
            '我的孩子',
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
            padding: EdgeInsets.only(left: 16.w, top: 20.w),
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
                'assets/images/temp_child@2x.png',
                width: 343.w,
                height: 116.w,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 31.w, top: 463.h),
            child: Container(
              //color: Colors.red,
              width: 313.w,
              height: 44.w,
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: MaterialButton(
                child: Text(
                  '添加',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'PingFangSC-Semibold',
                    fontSize: 16.sp,
                  ),
                ),
                elevation: 0.0,
                color: Color.fromRGBO(0, 145, 255, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.w)),
                //borderSide: BorderSide(color: Colors.orange, width: 1),
                onPressed: () {},
              ),
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
