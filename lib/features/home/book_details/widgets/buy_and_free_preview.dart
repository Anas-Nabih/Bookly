import 'package:bookly/core/utils/styles.dart';
 import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BuyAndFreePreview extends StatelessWidget {
  const BuyAndFreePreview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 5.h,
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
          height: 5.h,
          width: 30.w,
          decoration: const BoxDecoration(
              color: Colors.red,
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
