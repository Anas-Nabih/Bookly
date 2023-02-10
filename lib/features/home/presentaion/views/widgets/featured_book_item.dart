import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FeaturedBookItem extends StatelessWidget {
  const FeaturedBookItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.h,
      margin: EdgeInsets.only(left: 2.w),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.5),
          borderRadius: BorderRadius.circular(8)
      ),
    );
  }
}
