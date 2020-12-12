import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class imageshowDialog extends Dialog {
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
                width: 375.w,
                height: 375.w,
                color: Color.fromRGBO(250, 249, 247, 1),
              ),
            ),
          ),
        ));
  }
}
