import 'package:easy_localization/easy_localization.dart';
import 'package:eventhive/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpComingEvents extends StatelessWidget {
  const UpComingEvents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.w,
        right: 20.w,
      ),
      child: Row(
        children: [
          Text(
            LocaleKeys.upComingEvents.tr(),
            style: TextStyle(fontSize: 18.sp),
          ),
          const Spacer(),
          Row(
            children: [
              Text(LocaleKeys.seeAll.tr()),
              5.horizontalSpace,
              Icon(
                Icons.arrow_forward_ios_sharp,
                size: 15.r,
              )
            ],
          )
        ],
      ),
    );
  }
}
