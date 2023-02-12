import 'package:bookly/core/widgets/custom_error.dart';
import 'package:bookly/features/home/presentaion/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentaion/views/widgets/featured_book_item.dart';
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
          height: 32.h,
          child: ListView.builder(
            itemCount: 8,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const FeaturedBookItem(),
          ),
        );
      } else if (state is FeaturedBooksFailure) {
        return CustomErrorMSG(errorMSG: state.failureMSG);
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
