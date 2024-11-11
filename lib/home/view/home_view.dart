import 'package:eventhive/home/widget/category_section.dart';
import 'package:eventhive/home/widget/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HomeAppBarContainer(),
          const CategoryButtonsRow(),
          Padding(
            padding: EdgeInsets.all(20.r),
            child: Row(
              children: [
                Text(
                  "Upcoming Events",
                  style: TextStyle(fontSize: 18.sp),
                ),
                const Spacer(),
                Row(
                  children: [
                    const Text("See All"),
                    5.horizontalSpace,
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 15.r,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
