import 'package:eventhive/constants/image_constants.dart';
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
              iconPath: ImageConstants.musicImage,
              text: 'Concert',
              backgroundColor: Colors.purple,
            ),
            10.horizontalSpace,
            const IconTextContainer(
              iconPath: ImageConstants.festivalImage,
              text: 'Festival',
              backgroundColor: Colors.orange,
            ),
            10.horizontalSpace,
            const IconTextContainer(
              iconPath: ImageConstants.sportImage,
              text: 'Sport',
              backgroundColor: Colors.green,
            ),
            10.horizontalSpace,
            const IconTextContainer(
              iconPath: ImageConstants.museumImage,
              text: 'Museum',
              backgroundColor: Colors.blue,
            ),
            10.horizontalSpace,
            const IconTextContainer(
              iconPath: ImageConstants.theaterImage,
              text: 'Theater',
              backgroundColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
