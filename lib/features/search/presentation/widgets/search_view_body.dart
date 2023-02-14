import 'package:bookShelf/core/constants.dart';
import 'package:bookShelf/core/utils/service_locator.dart';
import 'package:bookShelf/features/search/presentation/manager/search_cubit/search_cubit.dart';
 import 'package:bookShelf/features/search/presentation/widgets/custom_text_field.dart';
import 'package:bookShelf/features/search/presentation/widgets/search_list_view.dart';
 import 'package:bookShelf/features/search/repo/search_repo_implementation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(

      create: (context) => SearchCubit(getItInstance.get<SearchRepoImpl>()),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Const.horizontalPadding, vertical: Const.verticalPadding),
        child: Column(
          children: [
            const CustomTextField(),
            SizedBox(
              height: 2.h,
            ),
            const SearchListView()
          ],
        ),
      ),
    );
  }
}


