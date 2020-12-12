import 'package:Cloudgrain_parents/screens/read/read_stimulate_setting.dart';
import 'package:Cloudgrain_parents/widgets/study_bookList.dart';
import 'package:Cloudgrain_parents/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileIntegrationStoreScreen extends StatefulWidget {
  @override
  _ProfileIntegrationStoreScreenState createState() =>
      _ProfileIntegrationStoreScreenState();
}

class _ProfileIntegrationStoreScreenState
    extends State<ProfileIntegrationStoreScreen>
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
            '积分商城',
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
            padding: EdgeInsets.only(left: 160.w, top: 218.w),
            child: Image.asset(
              'assets/images/illustration@3x.png',
              width: 54.w,
              height: 54.w,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 110.w, top: 288.w),
            child: Text(
              '功能还在完善中，请尽情期待',
              style: TextStyle(
                  color: Color.fromRGBO(155, 157, 161, 1),
                  fontSize: 12.sp,
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
