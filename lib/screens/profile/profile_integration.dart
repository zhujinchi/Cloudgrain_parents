import 'package:Cloudgrain_parents/screens/profile/profile_integration_store.dart';
import 'package:Cloudgrain_parents/screens/read/read_stimulate_setting.dart';
import 'package:Cloudgrain_parents/widgets/imageShow_Dialog.dart';
import 'package:Cloudgrain_parents/widgets/integration_rule_Dialog.dart';
import 'package:Cloudgrain_parents/widgets/study_bookList.dart';
import 'package:Cloudgrain_parents/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileIntegrationScreen extends StatefulWidget {
  @override
  _ProfileIntegrationScreenState createState() =>
      _ProfileIntegrationScreenState();
}

class _ProfileIntegrationScreenState extends State<ProfileIntegrationScreen>
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
            '我的积分',
            style: TextStyle(
                color: Color.fromRGBO(15, 32, 67, 1),
                fontSize: 18.w,
                fontFamily: 'PingFangSC-Medium'),
          ),
          actions: <Widget>[
            InkWell(
              onTap: () {
                showDialog(
                    barrierDismissible: true, //是否点击空白区域关闭对话框,默认为true，可以关闭
                    context: context,
                    builder: (BuildContext context) {
                      return IntegrationRuleDialog();
                    });
              },
              child: Center(
                child: Text(
                  '积分规则  ',
                  style: TextStyle(
                      color: Color.fromRGBO(13, 14, 16, 1),
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
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => ProfileIntegrationStoreScreen()));
            },
            child: Image.asset(
              'assets/images/temp_count@2x.png',
              width: 375.w,
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
