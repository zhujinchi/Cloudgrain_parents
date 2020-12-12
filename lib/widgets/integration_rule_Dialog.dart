import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntegrationRuleDialog extends Dialog {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(375, 667), allowFontScaling: false);
    // TODO: implement build
    return new Material(
        type: MaterialType.transparency,
        child: Container(
          child: InkWell(
            highlightColor: Colors.transparent,
            radius: 0.0,
            onTap: () {
              Navigator.of(context).pop(1);
            },
            child: Center(
              child: Container(
                width: 281.w,
                height: 254.w,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(9.w),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(224, 224, 224, 0.5),
                          offset: Offset(0, 2.w), //阴影xy轴偏移量
                          blurRadius: 7.w, //阴影模糊程度
                          spreadRadius: 0 //阴影扩散程度
                          )
                    ]),
                child: Image.asset(
                  'assets/images/temp_rulelog@2x.png',
                  width: 274.w,
                  height: 248.w,
                ),
              ),
            ),
          ),
        ));
  }
}
