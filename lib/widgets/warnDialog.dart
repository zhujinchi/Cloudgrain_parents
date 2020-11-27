import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WarnDialog extends Dialog {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(375, 667), allowFontScaling: false);
    // TODO: implement build
    return new Material(
      type: MaterialType.transparency,
      child: Padding(
          padding: EdgeInsets.only(left: 17.w, top: 164.w),
          child: Container(
            //padding: EdgeInsets.fromLTRB(100, 100, 0, 0),
            width: 342.w,
            height: 273.w,
            child: Stack(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 122.w),
                    child: Container(
                        width: 97.w,
                        height: 97.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(48.5.w),
                        ))),
                Padding(
                    padding: EdgeInsets.only(top: 33.w),
                    child: Container(
                      //padding: EdgeInsets.fromLTRB(100, 100, 0, 0),
                      width: 342.w,
                      height: 240.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6.w),
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.only(left: 142.w, top: 21.w),
                    child: Image.asset(
                      'assets/images/pb_ding@3x.png',
                      width: 70.w,
                      height: 64.w,
                      fit: BoxFit.fitHeight,
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 23.w, top: 102.w),
                  child: Container(
                    //color: Colors.red,
                    width: 142.w,
                    height: 36.w,
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: MaterialButton(
                      child: Text(
                        '看护提醒',
                        style: TextStyle(
                          color: Color.fromRGBO(59, 61, 79, 1),
                          fontFamily: 'PingFangSC-Regular',
                          fontSize: 14.sp,
                        ),
                      ),
                      elevation: 0,
                      color: Color.fromRGBO(252, 207, 97, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.w)),
                      //borderSide: BorderSide(color: Colors.orange, width: 1),
                      onPressed: () {
                        Navigator.of(context).pop(1);
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 23.w, top: 150.w),
                  child: Container(
                    //color: Colors.red,
                    width: 142.w,
                    height: 36.w,
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: MaterialButton(
                      child: Text(
                        '看护提醒',
                        style: TextStyle(
                          color: Color.fromRGBO(59, 61, 79, 1),
                          fontFamily: 'PingFangSC-Regular',
                          fontSize: 14.sp,
                        ),
                      ),
                      elevation: 0,
                      color: Color.fromRGBO(252, 207, 97, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.w)),
                      //borderSide: BorderSide(color: Colors.orange, width: 1),
                      onPressed: () {
                        Navigator.of(context).pop(1);
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 23.w, top: 198.w),
                  child: Container(
                    //color: Colors.red,
                    width: 142.w,
                    height: 36.w,
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: MaterialButton(
                      child: Text(
                        '看护提醒',
                        style: TextStyle(
                          color: Color.fromRGBO(59, 61, 79, 1),
                          fontFamily: 'PingFangSC-Regular',
                          fontSize: 14.sp,
                        ),
                      ),
                      elevation: 0,
                      color: Color.fromRGBO(252, 207, 97, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.w)),
                      //borderSide: BorderSide(color: Colors.orange, width: 1),
                      onPressed: () {
                        Navigator.of(context).pop(1);
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 177.w, top: 102.w),
                  child: Container(
                    //color: Colors.red,
                    width: 142.w,
                    height: 36.w,
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: MaterialButton(
                      child: Text(
                        '看护提醒',
                        style: TextStyle(
                          color: Color.fromRGBO(59, 61, 79, 1),
                          fontFamily: 'PingFangSC-Regular',
                          fontSize: 14.sp,
                        ),
                      ),
                      elevation: 0,
                      color: Color.fromRGBO(252, 207, 97, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.w)),
                      //borderSide: BorderSide(color: Colors.orange, width: 1),
                      onPressed: () {
                        Navigator.of(context).pop(1);
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 177.w, top: 150.w),
                  child: Container(
                    //color: Colors.red,
                    width: 142.w,
                    height: 36.w,
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: MaterialButton(
                      child: Text(
                        '看护提醒',
                        style: TextStyle(
                          color: Color.fromRGBO(59, 61, 79, 1),
                          fontFamily: 'PingFangSC-Regular',
                          fontSize: 14.sp,
                        ),
                      ),
                      elevation: 0,
                      color: Color.fromRGBO(252, 207, 97, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.w)),
                      //borderSide: BorderSide(color: Colors.orange, width: 1),
                      onPressed: () {
                        Navigator.of(context).pop(1);
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 177.w, top: 198.w),
                  child: Container(
                    //color: Colors.red,
                    width: 142.w,
                    height: 36.w,
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: MaterialButton(
                      child: Text(
                        '看护提醒',
                        style: TextStyle(
                          color: Color.fromRGBO(59, 61, 79, 1),
                          fontFamily: 'PingFangSC-Regular',
                          fontSize: 14.sp,
                        ),
                      ),
                      elevation: 0,
                      color: Color.fromRGBO(252, 207, 97, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.w)),
                      //borderSide: BorderSide(color: Colors.orange, width: 1),
                      onPressed: () {
                        Navigator.of(context).pop(1);
                      },
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
