import 'package:Cloudgrain_parents/screens/read/read_stimulate_setting.dart';
import 'package:Cloudgrain_parents/widgets/study_bookList.dart';
import 'package:Cloudgrain_parents/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileContectUsScreen extends StatefulWidget {
  @override
  _ProfileContectUsScreenState createState() => _ProfileContectUsScreenState();
}

class _ProfileContectUsScreenState extends State<ProfileContectUsScreen>
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
            '联系我们',
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
            padding: EdgeInsets.only(left: 25.w, top: 23.w),
            child: Text(
              '客服电话',
              style: TextStyle(
                  color: Color.fromRGBO(49, 49, 49, 0.85),
                  fontSize: 14.sp,
                  fontFamily: 'PingFangSC-Regular'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.w, top: 72.w),
            child: Text(
              '公司官网',
              style: TextStyle(
                  color: Color.fromRGBO(49, 49, 49, 0.85),
                  fontSize: 14.sp,
                  fontFamily: 'PingFangSC-Regular'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 268.w, top: 25.w),
            child: Text(
              '19945009033',
              style: TextStyle(
                  color: Color.fromRGBO(0, 145, 255, 1),
                  fontSize: 12.sp,
                  fontFamily: 'PingFangSC-Regular'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 246.w, top: 73.w),
            child: Text(
              'yundouyungu.com',
              style: TextStyle(
                  color: Color.fromRGBO(0, 145, 255, 1),
                  fontSize: 12.sp,
                  fontFamily: 'PingFangSC-Regular'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 27.w, top: 58.w),
            child: Container(
              width: 322.w,
              height: 1.w,
              color: Color.fromRGBO(248, 248, 248, 1),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 78.w, top: 547.w),
            child: Image.asset(
              'assets/images/temp_copyright@2x.png',
              width: 220.w,
              height: 34.w,
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
