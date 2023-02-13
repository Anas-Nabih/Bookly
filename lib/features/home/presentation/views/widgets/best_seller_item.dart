import 'package:bookShelf/features/home/data/models/book_model.dart';
import 'package:bookShelf/features/home/presentation/views/widgets/book_image.dart';
import 'package:bookShelf/features/home/presentation/views/widgets/book_info.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BookItem extends StatelessWidget {
  final BookModel book;
  const BookItem({Key? key,required this.book}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(bottom: 2.h),
      child: Row(
        children: [
            BookImage(imageURl: book.volumeInfo!.imageLinks!.thumbnail!),
          SizedBox(width: 4.w),
            BookInfo(book: book,)
        ],
      ),
    );
  }
}




