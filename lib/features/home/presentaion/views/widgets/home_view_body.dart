import 'package:bookly/features/home/presentaion/views/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentaion/views/widgets/featured_book_list_view.dart';
import 'package:bookly/features/home/presentaion/views/widgets/text_headline.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CustomAppBar(),
              FeaturedBooksListView(),
              TextHeadline(),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: BestSellerListView(),
        ),
      ],
    );
  }
}
