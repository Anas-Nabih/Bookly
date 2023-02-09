import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/core/utils/utils.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Utils.loadImage(img: AssetsData.logo),
    );
  }
}
