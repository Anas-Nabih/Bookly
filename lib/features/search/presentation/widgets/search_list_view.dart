import 'package:bookShelf/core/widgets/custom_error.dart';
import 'package:bookShelf/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookShelf/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SearchListView extends StatelessWidget {
  const SearchListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit,SearchState>(
      builder: (context, state) {
        if(state is SearchSuccess){
          return Expanded(
              child: ListView.builder(
                itemCount: state.books.length,
                 itemBuilder: (context, index) => BookItem(book: state.books[index]),
              ));
        }else if(state is SearchFailure){
          return CustomErrorMSG(errorMSG: state.errorMSG);
        }else if(state is SearchInitial){
          return Text("initial");
        }else{
          return CircularProgressIndicator();
        }
      },
    );
  }
}