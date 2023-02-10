import 'package:bookly/core/constants.dart';
import 'package:bookly/features/home/book_details/widgets/book_detais_info.dart';
import 'package:bookly/features/home/book_details/widgets/buy_and_free_preview.dart';import 'package:bookly/features/home/book_details/widgets/custom_details_app_bar.dart';
import 'package:bookly/features/home/presentaion/views/widgets/book_image.dart';
import 'package:bookly/features/home/presentaion/views/widgets/text_headline.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Const.horizontalPadding,
          vertical: Const.verticalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomDetailsAppBar(),
          SizedBox(height: 2.h),
          const BookDetailsInfo(),
          SizedBox(height: 2.h),
          const BuyAndFreePreview(),
          SizedBox(height: 2.h),
          const TextHeadline(
            headLine: "You can also like",
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) => const BookImage(),
            ),
          )
        ],
      ),
    );
  }
}
