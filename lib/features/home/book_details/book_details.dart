import 'package:bookly/features/home/book_details/widgets/book_details_body.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  final BookModel book;
  const BookDetailsView({Key? key,required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BookDetailsBody(book: book),
      ),
    );
  }
}
