import 'package:bookShelf/core/utils/styles.dart';
import 'package:bookShelf/features/home/data/models/book_model.dart';
import 'package:bookShelf/features/home/presentaion/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BookInfo extends StatelessWidget {
  final BookModel book;

  const BookInfo({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 50.w,
          child: Text(
            book.volumeInfo!.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.kSectraFineTitleMedium,
          ),
        ),
        SizedBox(height: 2.h),
        Text(
          book.volumeInfo!.authors!.first,
          style: Styles.kMonsterratSmall
              .copyWith(color: Colors.white.withOpacity(0.7)),
        ),
        SizedBox(height: 2.h),
        SizedBox(
          width: 60.w,
          child: Row(
            children: [
              Text(
                "Free",
                style: Styles.kMonsterratLarge,
              ),
              const Spacer(),
              BookRating(rating: book.volumeInfo?.averageRating ?? 5,count: book.volumeInfo?.ratingsCount ?? 1),
            ],
          ),
        )
      ],
    );
  }
}


