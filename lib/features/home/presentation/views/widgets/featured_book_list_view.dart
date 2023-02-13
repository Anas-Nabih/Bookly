import 'package:bookShelf/core/utils/utils.dart';
import 'package:bookShelf/core/widgets/custom_error.dart';
import 'package:bookShelf/features/home/book_details/book_details.dart';
import 'package:bookShelf/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookShelf/features/home/presentation/views/widgets/featured_book_item.dart';
import 'package:bookShelf/features/home/presentation/views/widgets/featured_book_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccess) {
        return SizedBox(
          height: 28.h,
          child: ListView.builder(
            itemCount: state.featuredBooks.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GestureDetector(
                onTap: () => Utils.push(
                    context: context,
                    navigationScreen:
                        BookDetailsView(book: state.featuredBooks[index])),
                child: FeaturedBookItem(
                    imageURL: state.featuredBooks[index].volumeInfo!
                        .imageLinks!.thumbnail!)),
          ),
        );
      } else if (state is FeaturedBooksFailure) {
        return CustomErrorMSG(errorMSG: state.failureMSG);
      } else {
        return const FeaturedBooksShimmer();
      }
    });
  }
}
