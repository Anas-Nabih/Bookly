import 'package:bookly/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    Key? key,required this.svgImg,required this.onTapped
  }) : super(key: key);

  final String svgImg;
  final void Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: SizedBox(
          height: 4.h,
          width: 3.h,
          child: Utils.loadSvgImg(svgImg: svgImg)),
    );
  }
}