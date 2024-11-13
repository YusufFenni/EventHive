
import 'package:eventhive/constants/color_constants.dart';
import 'package:eventhive/generated/locale_keys.g.dart';
import 'package:eventhive/home/widget/search_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppBarContainer extends StatelessWidget {
  const HomeAppBarContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 170.h,
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
      decoration: BoxDecoration(
        color: ColorConstants.blue,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20.r),
        ),
      ),
      child: const Column(
        children: [
          HomeLocationNotification(),
          SearchContainer(),
        ],
      ),
    );
  }
}

class HomeLocationNotification extends StatelessWidget {
  const HomeLocationNotification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.currentLocation,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 14.sp,
                ),
              ),
              3.horizontalSpace,
              Text(
                "New York, USA", //! Todo 
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ],
          ),
          CircleAvatar(
            radius: 20.r,
            backgroundColor: Colors.white.withOpacity(0.2),
            child: Icon(
              Icons.notifications_active,
              color: Colors.white,
              size: 24.sp,
            ),
          ),
        ],
      ),
    );
  }
}

