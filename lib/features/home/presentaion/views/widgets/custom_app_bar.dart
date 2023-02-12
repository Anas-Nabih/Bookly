import 'package:bookly/core/constants.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/core/utils/image_loader.dart';
import 'package:bookly/core/utils/utils.dart';
import 'package:bookly/features/search/presentation/search_view.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Const.horizontalPadding, vertical: Const.verticalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 4.h,
            child: ImageLoader.loadImage(img: AssetsData.logo),
          ),
          GestureDetector(
            onTap: () => Utils.push(
                context: context, navigationScreen: const SearchView()),
            child: ImageLoader.loadSvgImg(svgImg: AssetsData.icSearch),
          )
        ],
      ),
    );
  }
}
