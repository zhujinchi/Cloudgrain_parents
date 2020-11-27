import 'dart:collection';
import 'dart:convert';

import 'package:Cloudgrain_parents/screens/home/creat_shedule_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:Cloudgrain_parents/config/palette.dart';
import 'package:Cloudgrain_parents/config/styles.dart';
import 'package:Cloudgrain_parents/data/data.dart';
import 'package:Cloudgrain_parents/widgets/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_custom_calendar/flutter_custom_calendar.dart';
import 'package:flutter_custom_calendar/constants/constants.dart';
import 'package:flutter_custom_calendar/controller.dart';
import 'package:flutter_custom_calendar/utils/LogUtil.dart';

class ScheduleScreen extends StatefulWidget {
  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen>
    with SingleTickerProviderStateMixin {
  CalendarController controller;
  CalendarViewWidget calendar;
  HashSet<DateTime> _selectedDate = new HashSet();
  HashSet<DateModel> _selectedModels = new HashSet();

  GlobalKey<CalendarContainerState> _globalKey = new GlobalKey();

  @override
  void dispose() {
    super.dispose();
  }

  void initState() {
    _selectedDate.add(DateTime.now());
    controller = new CalendarController(
        minYear: 2019,
        minYearMonth: 1,
        maxYear: 2021,
        maxYearMonth: 12,
        showMode: CalendarConstants.MODE_SHOW_WEEK_AND_MONTH,
        selectedDateTimeList: _selectedDate,
        selectMode: CalendarSelectedMode.singleSelect)
      ..addOnCalendarSelectListener((dateModel) {
        _selectedModels.add(dateModel);
        setState(() {
          _selectDate = _selectedModels.toString();
        });
      })
      ..addOnCalendarUnSelectListener((dateModel) {
        LogUtil.log(
            TAG: '_selectedModels', message: _selectedModels.toString());
        LogUtil.log(TAG: 'dateModel', message: dateModel.toString());
        if (_selectedModels.contains(dateModel)) {
          _selectedModels.remove(dateModel);
        }
        setState(() {
          _selectDate = '';
        });
      });
    calendar = new CalendarViewWidget(
      key: _globalKey,
      calendarController: controller,
      dayWidgetBuilder: (DateModel model) {
        double wd = (MediaQuery.of(context).size.width - 20) / 7;
        //double wd = 21.w;
        bool _isSelected = model.isSelected;
        if (_isSelected &&
            CalendarSelectedMode.singleSelect ==
                controller.calendarConfiguration.selectMode) {
          _selectDate = model.toString();
        }
        return ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(wd / 2)),
          child: Container(
            color: _isSelected ? Color.fromRGBO(0, 145, 255, 1) : Colors.white,
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  model.day.toString(),
                  style: TextStyle(
                      color: model.isCurrentMonth
                          ? (_isSelected == false
                              ? (model.isWeekend
                                  ? Colors.black38
                                  : Colors.black87)
                              : Colors.white)
                          : Colors.black38),
                ),
//              Text(model.lunarDay.toString()),
              ],
            ),
          ),
        );
      },
    );
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controller.addExpandChangeListener((value) {
        /// 添加改变 月视图和 周视图的监听
        _isMonthSelected = value;
        setState(() {});
      });
    });
    super.initState();
  }

  bool _isMonthSelected = false;

  String _selectDate = '';

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(375, 667), allowFontScaling: false);
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 246, 246, 1),
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
        actions: <Widget>[
          InkWell(
            onTap: () {
              GotoCreatScheduleScreen(context);
            },
            child: Center(
              child: Text(
                '新增任务   ',
                style: TextStyle(
                    color: Color.fromRGBO(0, 145, 255, 1),
                    fontSize: 14.sp,
                    fontFamily: 'PingFangSC-Regular'),
              ),
            ),
            highlightColor: Colors.transparent, // 透明色
            splashColor: Colors.transparent, // 透明色
          )
        ],
        title: Text(
          '我的日程',
          style: TextStyle(
              color: Color.fromRGBO(59, 61, 79, 1),
              fontSize: 18.sp,
              fontFamily: 'PingFangSC-Medium'),
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          _buileCalenderView(),
          _buildDataSelectView(),
          _buildClassList(),
          _buildStudyChart(),
          // SliverToBoxAdapter(
          //   child: Container(
          //     child: Text(
          //       ' $_selectDate ',
          //       style: TextStyle(color: Colors.red),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }

  void GotoCreatScheduleScreen(BuildContext context) {
    Navigator.of(context)
        .push(CupertinoPageRoute(builder: (context) => CreatScheduleScreen()));
  }

  Widget _buileCalenderView() {
    return SliverToBoxAdapter(
      child: Container(
        height: 147.w,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        decoration: BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1),
            //borderRadius: BorderRadius.circular(7.w),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(180, 180, 180, 0.11),
                  offset: Offset(0, 2.w), //阴影xy轴偏移量
                  blurRadius: 7.w, //阴影模糊程度
                  spreadRadius: 0

                  ///阴影扩散程度
                  )
            ]),
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  IconButton(
                      icon: Image.asset(
                        'assets/icons/zy_icon_left@3x.png',
                        width: 10.w,
                        height: 16.w,
                      ),
                      color: Colors.red,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {
                        controller.previousPage();
                      }),
                  IconButton(
                      icon: Image.asset(
                        'assets/icons/zy_icon_right@3x.png',
                        width: 10.w,
                        height: 16.w,
                      ),
                      color: Colors.red,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {
                        controller.nextPage();
                      }),
                ],
              ),
            ),
            Container(
              child: calendar,
            )
          ],
        ),
        //child: calendar,
      ),
      //child: calendar,
    );
  }

  Widget _buildDataSelectView() {
    return SliverToBoxAdapter(
      child: Container(
        width: 375.w,
        height: 71.w,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 16.w, top: 18.w),
              child: Container(
                width: 50.w,
                height: 26.w,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 145, 255, 1),
                    borderRadius: BorderRadius.circular(13.w),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 145, 255, 0.2),
                          offset: Offset(0, 2.w), //阴影xy轴偏移量
                          blurRadius: 7.w, //阴影模糊程度
                          spreadRadius: 0

                          ///阴影扩散程度
                          )
                    ]),
                child: Center(
                  child: Text(
                    '今天',
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 14.sp,
                        fontFamily: 'PingFangSC-Regular'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 84.w, top: 18.w),
              child: Container(
                //color: Colors.red,
                width: 50.w,
                height: 26.w,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(13.w),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(230, 230, 230, 0.5),
                          offset: Offset(0, 2.w), //阴影xy轴偏移量
                          blurRadius: 7.w, //阴影模糊程度
                          spreadRadius: 0

                          ///阴影扩散程度
                          )
                    ]),
                child: Center(
                  child: Text(
                    '明日',
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                        fontSize: 14.sp,
                        fontFamily: 'PingFangSC-Regular'),
                  ),
                ),
              ),
            )
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
            padding: EdgeInsets.fromLTRB(0.w, 0.w, 0.w, 0.w),
            color: Color.fromRGBO(250, 249, 247, 1),
            child: Container(
              width: 375.w,
              height: 102.w,
              color: Colors.red,
            ),
          ),
        );
      }, childCount: 2),
    );
  }

  SliverToBoxAdapter _buildStudyChart() {
    return SliverToBoxAdapter(
      child: Container(
        width: 375.w,
        height: 127.w,
        padding: EdgeInsets.only(
          left: 0.w,
          top: 41.w,
        ),
        child: Container(
          width: 313.w,
          height: 44.w,
          color: Colors.red,
          // child: MaterialButton(
          //   child: Text(
          //     '看护提醒',
          //     style: TextStyle(
          //       color: Color.fromRGBO(59, 61, 79, 1),
          //       fontFamily: 'PingFangSC-Regular',
          //       fontSize: 14.sp,
          //     ),
          //   ),
          //   elevation: 0,
          //   color: Color.fromRGBO(252, 207, 97, 1),
          //   shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(4.w)),
          //   //borderSide: BorderSide(color: Colors.orange, width: 1),
          //   onPressed: () {},
          // ),
        ),
      ),
    );
  }

  Widget _buildSelectedTime(String selectedData) {
    var json = jsonDecode(selectedData);
    print(json);
    final String year = json['DataModel']['year'];
    final String month = json['DataModel']['month'];
    final String day = json['DataModel']['day'];
    return Container(
        //child: Text('$year' + '年' + '$month' + '月' + '$day' + '日'),
        );
  }
}
