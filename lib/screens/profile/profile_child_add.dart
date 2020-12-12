import 'package:Cloudgrain_parents/screens/read/read_stimulate_setting.dart';
import 'package:Cloudgrain_parents/widgets/study_bookList.dart';
import 'package:Cloudgrain_parents/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileChildAddScreen extends StatefulWidget {
  @override
  _ProfileChildAddScreenState createState() => _ProfileChildAddScreenState();
}

class _ProfileChildAddScreenState extends State<ProfileChildAddScreen>
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
            '个人信息',
            style: TextStyle(
                color: Color.fromRGBO(15, 32, 67, 1),
                fontSize: 18.w,
                fontFamily: 'PingFangSC-Medium'),
          ),
          actions: <Widget>[
            InkWell(
              onTap: () {
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) => ReadStimulateSettingScreen()));
              },
              child: Center(
                child: Text(
                  '新增任务   ',
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
        children: <Widget>[],
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
