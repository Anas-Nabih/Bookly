import 'package:bookly/core/constants.dart';
import 'package:bookly/features/home/presentaion/views/widgets/best_seller_item.dart';
import 'package:bookly/features/search/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Const.horizontalPadding, vertical: Const.verticalPadding),
      child: Column(
        children: [
          const CustomTextField(),
          SizedBox(
            height: 2.h,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => const BookItem(),
          ))
        ],
      ),
    );
  }
}
