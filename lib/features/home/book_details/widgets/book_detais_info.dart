import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BookDetailsInfo extends StatelessWidget {
  const BookDetailsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 35.h,
          width: 45.w,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.5),
              borderRadius: BorderRadius.circular(8)),
        ),
        SizedBox(height: 3.h),
        Column(
          children: [
            SizedBox(
              width: 50.w,
              child: Text(
                "Harry Potter and the Goblet of fire.",
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: Styles.kSectraFineTitleMedium,
              ),
            ),
            SizedBox(height: 1.5.h),
            Text(
              "Anas Nabih",
              style: Styles.kMonsterratMedium.copyWith(
                  fontSize: 12.sp, color: Colors.white.withOpacity(0.7)),
            ),
            SizedBox(height: 1.5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, size: 2.5.h, color: Colors.amber),
                Text(
                  "4.8",
                  style: Styles.kMonsterratLarge.copyWith(fontSize: 13.sp),
                ),
                SizedBox(width: 1.w),
                Text(
                  "(2390)",
                  style: Styles.kMonsterratSmall
                      .copyWith(color: Colors.white.withOpacity(0.5)),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
