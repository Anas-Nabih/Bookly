import 'package:bookly/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TextHeadline extends StatelessWidget {
  const TextHeadline({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Const.horizontalPadding, vertical: Const.verticalPadding),
      child: Text(
        "Best Seller",
        style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
      ),
    );
  }
}
