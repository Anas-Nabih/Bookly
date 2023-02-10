import 'package:bookly/features/home/presentaion/views/widgets/book_image.dart';
import 'package:bookly/features/home/presentaion/views/widgets/book_info.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(bottom: 2.h),
      child: Row(
        children: [
          const BookImage(),
          SizedBox(width: 4.w),
          const BookInfo()
        ],
      ),
    );
  }
}




