import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BookRating extends StatelessWidget {
  final int rating;
  final int count;
  const BookRating({
    Key? key,required this.count,required this.rating
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, size: 2.5.h, color: Colors.amber),
        Text(
          "$rating",
          style: Styles.kMonsterratLarge.copyWith(fontSize: 13.sp),
        ),
        SizedBox(width: 1.w),
        Text(
          "($count)",
          style: Styles.kMonsterratSmall
              .copyWith(color: Colors.white.withOpacity(0.5)),
        ),
      ],
    );
  }
}