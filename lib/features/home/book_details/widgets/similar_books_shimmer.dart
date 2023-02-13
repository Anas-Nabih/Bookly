import 'package:bookly/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class SimilarBooksShimmer extends StatelessWidget {
  const SimilarBooksShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 17.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) => Shimmer.fromColors(
          baseColor: MColors.kBaseColor,
          highlightColor: MColors.kHighlightColor,
          child: Container(
            height: 20.h,
            width: 15.h,
            margin: EdgeInsets.only(left: 2.w),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.5),
                borderRadius: BorderRadius.circular(8)),
          ),
        ),
      ),
    );
  }
}
