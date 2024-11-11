import 'package:eventhive/widget/icon_text_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryButtonsRow extends StatelessWidget {
  const CategoryButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.r),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const IconTextContainer(
              iconPath: 'assets/icon/ticket.svg',
              text: 'Concert',
              backgroundColor: Colors.purple,
            ),
            10.horizontalSpace,
            const IconTextContainer(
              iconPath: 'assets/icon/art.svg',
              text: 'Festival',
              backgroundColor: Colors.orange,
            ),
            10.horizontalSpace,
            const IconTextContainer(
              iconPath: 'assets/icon/ball.svg',
              text: 'Sport',
              backgroundColor: Colors.green,
            ),
            10.horizontalSpace,
            const IconTextContainer(
              iconPath: 'assets/icon/museum.svg',
              text: 'Museum',
              backgroundColor: Colors.blue,
            ),
            10.horizontalSpace,
            const IconTextContainer(
              iconPath: 'assets/icon/tiatro.svg',
              text: 'Theater',
              backgroundColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
