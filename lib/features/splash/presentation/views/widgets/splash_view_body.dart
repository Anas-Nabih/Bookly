import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Utils.loadImage(img: AssetsData.logo),
        SizedBox(height: 3.h),
        Text(
          'Read Free Books',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14.sp),
        )
      ],
    );
  }
}
