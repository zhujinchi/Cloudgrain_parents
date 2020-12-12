import 'package:Cloudgrain_parents/screens/class/teacher_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';

class ClassCard extends StatelessWidget {
  final int classPrice;
  final String classWide;
  final String classTime;
  final String teacherName;
  final String teachTime;
  final String teachEducation;
  final String teachScore;

  const ClassCard({
    Key key,
    this.classPrice,
    this.classWide,
    this.classTime,
    this.teacherName,
    this.teachTime,
    this.teachEducation,
    this.teachScore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(375, 667), allowFontScaling: false);
    return InkWell(
      onTap: () {
        Navigator.of(context).push(CupertinoPageRoute(
            builder: (context) => TeacherInformationScreen()));
      },
      child: Container(
        width: 343.w,
        height: 186.w,
        decoration: BoxDecoration(
          color: Colors.white,
          border: new Border.all(
              width: 2.0, color: Color.fromRGBO(250, 249, 247, 1)),
          borderRadius: BorderRadius.all(Radius.circular(12.w)),
        ),
        child: Stack(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(21.w, 17.w, 0, 0),
                child: Container(
                  width: 40.w,
                  height: 40.w,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20.w)),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(26.w, 65.w, 0, 0),
                child: Text(
                  '名字',
                  style: TextStyle(
                      color: Color.fromRGBO(15, 32, 67, 1),
                      fontSize: 14.sp,
                      fontFamily: 'PingFangSC-Regular'),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(21.w, 120.w, 0, 0),
                child: Text(
                  '教龄三年',
                  style: TextStyle(
                      color: Color.fromRGBO(164, 173, 200, 1),
                      fontSize: 10.sp,
                      fontFamily: 'PingFangSC-Regular'),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(8.w, 149.w, 0, 0),
                child: Text(
                  '武汉大学硕士',
                  style: TextStyle(
                      color: Color.fromRGBO(164, 173, 200, 1),
                      fontSize: 10.sp,
                      fontFamily: 'PingFangSC-Regular'),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(88.w, 18.w, 0, 0),
                child: Container(
                  width: 1.w,
                  height: 152.w,
                  color: Color.fromRGBO(164, 173, 200, 1),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(104.w, 17.w, 0, 0),
                child: Text(
                  '¥100',
                  style: TextStyle(
                      color: Color.fromRGBO(253, 169, 53, 1),
                      fontSize: 20.sp,
                      fontFamily: 'PingFangSC-Regular'),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(157.w, 22.5.w, 0, 0),
                child: Text(
                  '/小时',
                  style: TextStyle(
                      color: Color.fromRGBO(15, 32, 67, 1),
                      fontSize: 10.sp,
                      fontFamily: 'PingFangSC-Regular'),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(103.w, 49.w, 0, 0),
                child: Container(
                    width: 38.w,
                    height: 18.w,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(191, 230, 150, 1),
                        borderRadius: BorderRadius.circular(9.w)),
                    child: Center(
                        child: Text(
                      '数学',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.sp,
                          fontFamily: 'PingFangSC-Regular'),
                    )))),
            Padding(
                padding: EdgeInsets.fromLTRB(147.w, 49.w, 0, 0),
                child: Container(
                    width: 38.w,
                    height: 18.w,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(45, 144, 171, 1),
                        borderRadius: BorderRadius.circular(9.w)),
                    child: Center(
                        child: Text(
                      '物理',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.sp,
                          fontFamily: 'PingFangSC-Regular'),
                    )))),
            Padding(
                padding: EdgeInsets.fromLTRB(191.w, 49.w, 0, 0),
                child: Container(
                    width: 38.w,
                    height: 18.w,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(251, 162, 111, 1),
                        borderRadius: BorderRadius.circular(9.w)),
                    child: Center(
                        child: Text(
                      '化学',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.sp,
                          fontFamily: 'PingFangSC-Regular'),
                    )))),
            Padding(
                padding: EdgeInsets.fromLTRB(104.w, 82.w, 0, 0),
                child: Text(
                  '教学范围',
                  style: TextStyle(
                      color: Color.fromRGBO(15, 32, 67, 1),
                      fontSize: 12.sp,
                      fontFamily: 'PingFangSC-Regular'),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(176.w, 83.w, 0, 0),
                child: Text(
                  '授课小时',
                  style: TextStyle(
                      color: Color.fromRGBO(15, 32, 67, 1),
                      fontSize: 12.sp,
                      fontFamily: 'PingFangSC-Regular'),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(104.w, 130.w, 0, 0),
                child: Text(
                  '好评度',
                  style: TextStyle(
                      color: Color.fromRGBO(15, 32, 67, 1),
                      fontSize: 12.sp,
                      fontFamily: 'PingFangSC-Regular'),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(104.w, 107.w, 0, 0),
                child: Text(
                  '初中（1～3）',
                  style: TextStyle(
                      color: Color.fromRGBO(164, 173, 200, 1),
                      fontSize: 10.sp,
                      fontFamily: 'PingFangSC-Regular'),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(176.w, 107.w, 0, 0),
                child: Text(
                  '500h',
                  style: TextStyle(
                      color: Color.fromRGBO(164, 173, 200, 1),
                      fontSize: 10.sp,
                      fontFamily: 'PingFangSC-Regular'),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(104.w, 154.w, 0, 0),
                child: Text(
                  '良好',
                  style: TextStyle(
                      color: Color.fromRGBO(164, 173, 200, 1),
                      fontSize: 12.sp,
                      fontFamily: 'PingFangSC-Regular'),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(315.w, 19.w, 0, 0),
                child: Image.asset(
                  'assets/icons/yk_icon_attention_default@3x.png',
                  width: 16.w,
                  height: 16.w,
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(249.w, 139.w, 0, 0),
                child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 82.w,
                      height: 31.w,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 145, 255, 1),
                        borderRadius: BorderRadius.circular(6.w),
                      ),
                      child: Center(
                        child: Text('约课',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontFamily: 'PingFangSC-Medium')),
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}
