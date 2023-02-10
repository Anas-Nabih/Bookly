import 'package:bookly/core/utils/utils.dart';
import 'package:bookly/features/home/book_details/book_details.dart';
import 'package:bookly/features/home/presentaion/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 8,
      itemBuilder: (context, index) => GestureDetector(
          onTap: ()=>Utils.push(context: context, navigationScreen:const  BookDetailsView()),
          child: const BookItem()),
    );
  }
}
