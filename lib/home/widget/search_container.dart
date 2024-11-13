import 'package:easy_localization/easy_localization.dart';
import 'package:eventhive/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          10.horizontalSpace,
          Icon(
            Icons.search,
            color: Colors.grey,
            size: 24.sp,
          ),
          10.horizontalSpace,
          Text(
            LocaleKeys.search.tr(),
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
    );
  }
}
