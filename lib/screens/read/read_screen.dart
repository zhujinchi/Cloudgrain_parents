import 'package:Cloudgrain_parents/screens/read/read_charts.dart';
import 'package:Cloudgrain_parents/screens/read/read_stimulate.dart';
import 'package:Cloudgrain_parents/widgets/study_bookList.dart';
import 'package:Cloudgrain_parents/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReadScreen extends StatefulWidget {
  @override
  _ReadScreenState createState() => _ReadScreenState();
}

class _ReadScreenState extends State<ReadScreen>
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
          title: Text(
            '点读',
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
            padding: EdgeInsets.only(left: 16.w, top: 23.w),
            child: Container(
              width: 343.w,
              height: 246.w,
              decoration: BoxDecoration(
                color: Color.fromRGBO(216, 216, 216, 1),
                borderRadius: BorderRadius.circular(8.w),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 153.w, top: 101.w),
            child: Image.asset(
              'assets/images/temp_video@3x.png',
              width: 69.w,
              height: 69.w,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 151.w, top: 187.w),
            child: Text(
              '引导视频',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  letterSpacing: 1.69.w,
                  fontFamily: 'PingFangSC-Regular'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 336.w),
            child: Container(
              //color: Colors.red,
              width: 153.w,
              height: 44.w,
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: MaterialButton(
                child: Text(
                  '我的激励',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'PingFangSC-Semibold',
                    fontSize: 16.sp,
                  ),
                ),

                color: Color.fromRGBO(0, 145, 255, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.w)),
                //borderSide: BorderSide(color: Colors.orange, width: 1),
                onPressed: () {
                  Navigator.of(context).push(CupertinoPageRoute(
                      builder: (context) => ReadStimulateScreen()));
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 207.w, top: 336.w),
            child: Container(
              //color: Colors.red,
              width: 153.w,
              height: 44.w,
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: MaterialButton(
                child: Text(
                  '点读报表',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'PingFangSC-Semibold',
                    fontSize: 16.sp,
                  ),
                ),

                color: Color.fromRGBO(0, 145, 255, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.w)),
                //borderSide: BorderSide(color: Colors.orange, width: 1),
                onPressed: () {
                  Navigator.of(context).push(CupertinoPageRoute(
                      builder: (context) => ReadChartsScreen()));
                },
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
