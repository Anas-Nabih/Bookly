 import 'package:bookly/core/constants.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:bookly/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BooklyApp());
}


class BooklyApp extends StatelessWidget {
  const BooklyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: Const.appName,
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: MColors.kScaffoldBGColor
      ),
      home: const SplashView(),
    );
  }
}

