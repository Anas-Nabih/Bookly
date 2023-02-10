import 'package:bookly/core/constants.dart';
import 'package:bookly/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Const.horizontalPadding),
      child: Row(

        children: [
          SizedBox(  height: 4.h,child: Utils.loadSvgImg(svgImg: "assets/svg/cancel.svg")),
          SizedBox(  height: 4.h,child: Utils.loadSvgImg(svgImg: "assets/svg/cart.svg")),
         ],
      ),
    );
  }
}
