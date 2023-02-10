import 'package:bookly/core/utils/styles.dart';
 import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BuyAndFreePreviewButton extends StatelessWidget {
  const BuyAndFreePreviewButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 6.h,
          width: 30.w,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topLeft: Radius.circular(10),
              )),
          child: Center(
            child: Text(
              "19.99 \$",
              style: Styles.kMonsterratLarge.copyWith(color: Colors.black),
            ),
          ),
        ),
        Container(
          height: 6.h,
          width: 30.w,
          decoration: const BoxDecoration(
              color: Color(0XFFEF8262),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(10),
              )),
          child: Center(
            child: Text(
              "Free Preview",
              style: Styles.kMonsterratLarge
                  .copyWith(fontSize: 12.sp, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
