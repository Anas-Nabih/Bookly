import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BookImage extends StatelessWidget {
  const BookImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: 15.h,
      margin: EdgeInsets.only(left: 2.w),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.5),
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
