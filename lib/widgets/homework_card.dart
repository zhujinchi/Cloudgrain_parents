import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';

class HomeWorkCard extends StatelessWidget {
  final String homeworkContent;
  final String homeworkType;
  final String studentName;
  final String studentSchool;
  final String studentClass;

  const HomeWorkCard({
    Key key,
    this.homeworkContent,
    this.homeworkType,
    this.studentName,
    this.studentSchool,
    this.studentClass,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(375, 667), allowFontScaling: false);
    return Container(
      width: 164.w,
      height: 236.w,
      decoration: BoxDecoration(
        color: Colors.white,
        border:
            new Border.all(width: 2.w, color: Color.fromRGBO(250, 249, 247, 1)),
        borderRadius: BorderRadius.all(Radius.circular(12.w)),
      ),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Container(
              width: 164.w,
              height: 150.w,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.w),
                    topRight: Radius.circular(8.w)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Image.asset(
              'assets/icons/icon_tj@3x.png',
              width: 40.w,
              height: 21.w,
            ),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(14.w, 3.w, 0, 0),
              child: Text(
                '优',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.sp,
                    fontFamily: 'PingFangSC-Regular'),
              )),
          Padding(
              padding: EdgeInsets.fromLTRB(8.w, 162.w, 0, 0),
              child: Text(
                '作业内容：解答题',
                style: TextStyle(
                    color: Color.fromRGBO(15, 32, 67, 1),
                    fontSize: 12.sp,
                    fontFamily: 'PingFangSC-Regular'),
              )),
          Padding(
              padding: EdgeInsets.fromLTRB(123.w, 164.w, 0, 0),
              child: Container(
                  width: 36.w,
                  height: 17.w,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(191, 230, 150, 1),
                      borderRadius: BorderRadius.circular(9.w)),
                  child: Center(
                      child: Text(
                    '数学',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 11.sp,
                        fontFamily: 'PingFangSC-Regular'),
                  )))),
          Padding(
              padding: EdgeInsets.fromLTRB(31.w, 184.w, 0, 0),
              child: Text(
                '小A同学',
                style: TextStyle(
                    color: Color.fromRGBO(15, 32, 67, 1),
                    fontSize: 14.sp,
                    fontFamily: 'PingFangSC-Regular'),
              )),
          Padding(
              padding: EdgeInsets.fromLTRB(8.w, 185.w, 0, 0),
              child: Container(
                width: 18.w,
                height: 18.w,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(9.w)),
              )),
          Padding(
            padding: EdgeInsets.fromLTRB(8.w, 206.w, 0, 0),
            child: Text(
              '武汉市第十七中学',
              style: TextStyle(
                  color: Color.fromRGBO(164, 173, 200, 1),
                  fontSize: 10.sp,
                  fontFamily: 'PingFangSC-Regular'),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(100.w, 206.w, 0, 0),
            child: Text(
              '初一（3）班',
              style: TextStyle(
                  color: Color.fromRGBO(164, 173, 200, 1),
                  fontSize: 10.sp,
                  fontFamily: 'PingFangSC-Regular'),
            ),
          ),
        ],
      ),
    );
  }
}
