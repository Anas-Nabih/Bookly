import 'package:bookly/core/widgets/custom_error.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/presentaion/manager/similar_books/similar_books_cubit.dart';
import 'package:bookly/features/home/presentaion/views/widgets/book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class SuggestedBooksList extends StatefulWidget {
  final BookModel book;

  const SuggestedBooksList({Key? key, required this.book}) : super(key: key);

  @override
  State<SuggestedBooksList> createState() => _SuggestedBooksListState();
}

class _SuggestedBooksListState extends State<SuggestedBooksList> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context)
        .getSimilarBooks(category: widget.book!.volumeInfo!.categories![0]);
    debugPrint(widget.book!.volumeInfo!.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: ((context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: 17.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books!.length,
              itemBuilder: (context, index) =>
                  BookImage(imageURl: state.books[index].volumeInfo!.imageLinks!.smallThumbnail!),
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorMSG(errorMSG: state.errorMSG);
        } else {
          return CircularProgressIndicator();
        }
      }),
    );
  }
}
