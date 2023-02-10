import 'package:bookly/core/constants.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(
          horizontal: Const.horizontalPadding,
          vertical: Const.verticalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 4.h,
            child: Utils.loadImage(img: AssetsData.logo),
          ),
          Utils.loadSvgImg(svgImg: AssetsData.icSearch),
        ],
      ),
    );
  }
}
