import 'package:bookShelf/core/constants.dart';
import 'package:bookShelf/core/utils/service_locator.dart';
import 'package:bookShelf/features/home/book_details/widgets/book_detais_info.dart';
import 'package:bookShelf/features/home/book_details/widgets/buy_and_free_preview_button.dart';
import 'package:bookShelf/features/home/book_details/widgets/custom_details_app_bar.dart';
import 'package:bookShelf/features/home/book_details/widgets/similar_books_list.dart';
import 'package:bookShelf/features/home/data/models/book_model.dart';
import 'package:bookShelf/features/home/data/repo/home_repo_implementation.dart';
import 'package:bookShelf/features/home/presentation/manager/similar_books/similar_books_cubit.dart';
import 'package:bookShelf/features/home/presentation/views/widgets/text_headline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class BookDetailsBody extends StatelessWidget {
  final BookModel book;

  const BookDetailsBody({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Const.horizontalPadding, vertical: Const.verticalPadding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomDetailsAppBar(),
            SizedBox(height: 1.h),
            BookDetailsInfo(book: book),
            SizedBox(height: 2.h),
            const BuyAndFreePreviewButton(),
            SizedBox(height: 2.h),
            const TextHeadline(
              headLine: "You can also like",
            ),
            BlocProvider(
                create: (context) =>
                    SimilarBooksCubit(getItInstance.get<HomeRepoImpl>()),
                child: SimilarBooksList(
                  book: book,
                ))
          ],
        ),
      ),
    );
  }
}
