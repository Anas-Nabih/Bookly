import 'package:bookly/features/home/presentaion/views/widgets/featured_book_item.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      child: ListView.builder(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => FeaturedBookItem(),
      ),
    );
  }
}
