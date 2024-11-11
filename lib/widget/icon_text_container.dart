import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconTextContainer extends StatelessWidget {
  final String iconPath;
  final String text;
  final Color backgroundColor;
  final Color textColor;

  const IconTextContainer({
    super.key,
    required this.iconPath,
    required this.text,
    this.backgroundColor = Colors.blueAccent,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 106.w,
      height: 40.h,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconPath,
            width: 20.w,
            height: 20.h,
            color: Colors.white,
          ),
          4.horizontalSpace,
          Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}
