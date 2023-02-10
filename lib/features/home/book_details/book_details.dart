import 'package:bookly/core/constants.dart';
import 'package:bookly/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: Const.horizontalPadding,
          vertical: Const.verticalPadding),
          child: Column(

            children: [
              const CustomDetailsAppBar(),
              SizedBox(height: 4.h),
              Container(
                height: 40.h,
                width: 50.w,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.5),
                    borderRadius: BorderRadius.circular(8)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDetailsAppBar extends StatelessWidget {
  const CustomDetailsAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            height: 4.h,
            width: 3.h,
            child: Utils.loadSvgImg(svgImg: "assets/svg/cancel.svg")),
        const Spacer(),
        SizedBox(
            height: 4.h,
            width: 3.h,
            child: Utils.loadSvgImg(svgImg: "assets/svg/cart.svg")),
      ],
    );
  }
}
