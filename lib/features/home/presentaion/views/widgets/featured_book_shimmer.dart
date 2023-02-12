import 'package:bookly/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class FeaturedBooksShimmer extends StatelessWidget {
  const FeaturedBooksShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: MColors.kBaseColor,
      highlightColor: MColors.kHighlightColor,
      child: SizedBox(
        height: 32.h,
        child: ListView.builder(
          itemCount: 8,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
            width: 20.h,
            margin: EdgeInsets.only(left: 2.w),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
          ),
        ),
      ),
    );
  }
}
