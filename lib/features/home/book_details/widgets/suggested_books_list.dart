import 'package:bookly/features/home/presentaion/views/widgets/book_image.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SuggestedBooksList extends StatelessWidget {
  const SuggestedBooksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 17.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) => const BookImage(),
      ),
    );
  }
}
