import 'package:bookShelf/core/constants.dart';
import 'package:bookShelf/core/utils/service_locator.dart';
import 'package:bookShelf/features/home/data/repo/home_repo_implementation.dart';
import 'package:bookShelf/features/home/presentaion/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookShelf/features/home/presentaion/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookShelf/features/splash/presentation/views/splash_view.dart';
import 'package:bookShelf/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

void main() {
  setupServiceLocator();
  runApp(const bookShelfApp());
}

class bookShelfApp extends StatelessWidget {
  const bookShelfApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                FeaturedBooksCubit(getItInstance.get<HomeRepoImpl>())..getFeaturedBooks(),
          ),
          BlocProvider(
            create: (context) =>
                NewestBooksCubit(getItInstance.get<HomeRepoImpl>())..getNewestBooks(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: Const.appName,
          theme: ThemeData.dark().copyWith(
              useMaterial3: true,
              scaffoldBackgroundColor: MColors.kScaffoldBGColor),
          home: const SplashView(),
        ),
      ),
    );
  }
}
