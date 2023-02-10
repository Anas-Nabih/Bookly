import 'package:bookly/core/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 50.w,
          child: Text(
            "Harry Potter and the Goblet of fire.",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.kSectraFineTitleMedium,
          ),
        ),
        SizedBox(height: 2.h),
        Text(
          "Anas Nabih",
          style: Styles.kMonsterratMedium.copyWith(color: Colors.white.withOpacity(0.7)),
        ),
        SizedBox(height: 2.h),
        SizedBox(
          width: 60.w,
          child: Row(
            children: [
              Text(
                "19.99 \$",
                style: Styles.kMonsterratLarge,
              ),
              const Spacer(),
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
              ),
            ],
          ),
        )
      ],
    );
  }
}
