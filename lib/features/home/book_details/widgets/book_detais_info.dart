import 'package:bookShelf/core/utils/image_loader.dart';
import 'package:bookShelf/core/utils/styles.dart';
import 'package:bookShelf/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BookDetailsInfo extends StatelessWidget {
  final BookModel book;

  const BookDetailsInfo({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 33.h,
          width: 45.w,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.5),
              borderRadius: BorderRadius.circular(8)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: ImageLoader.loadCachedNetworkImage(
                book.volumeInfo!.imageLinks!.thumbnail!),
          ),
        ),
        SizedBox(height: 3.h),
        Column(
          children: [
            SizedBox(
              width: 50.w,
              child: Text(
                book.volumeInfo!.title!,
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: Styles.kSectraFineTitleMedium,
              ),
            ),
            SizedBox(height: 1.5.h),
            Text(
              book.volumeInfo!.authors![0],
              style: Styles.kMonsterratMedium.copyWith(
                  fontSize: 12.sp, color: Colors.white.withOpacity(0.7)),
            ),
            SizedBox(height: 1.5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, size: 2.5.h, color: Colors.amber),
                Text(
                  book.volumeInfo?.averageRating?.toString() ?? "0",
                  style: Styles.kMonsterratLarge.copyWith(fontSize: 13.sp),
                ),
                SizedBox(width: 1.w),
                Text(
                  "(${book.volumeInfo?.ratingsCount?.toString() ?? "0"})",
                  style: Styles.kMonsterratSmall
                      .copyWith(color: Colors.white.withOpacity(0.5)),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
