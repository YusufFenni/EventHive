import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventContainer extends StatelessWidget {
  final String title;
  final String location;
  final String date;
  final String imagePath;
  final Color backgroundColor;
  final VoidCallback ontap;

  const EventContainer({
    super.key,
    required this.title,
    required this.location,
    required this.date,
    required this.imagePath,
    required this.backgroundColor,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Container(
          width: 240.w,
          height: 210.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: backgroundColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.verticalSpace,
              Center(
                child: Container(
                  width: 210.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 45.w,
                          height: 45.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Colors.white70,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                date.split(' ')[0],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp),
                              ),
                              Text(date.split(' ')[1]),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              6.verticalSpace,
              Padding(
                padding: EdgeInsets.only(left: 12.w),
                child: Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                  ),
                ),
              ),
              6.verticalSpace,
              Row(
                children: [
                  8.horizontalSpace,
                  const Icon(Icons.location_pin),
                  8.horizontalSpace,
                  Flexible(
                    child: Text(
                      location,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
