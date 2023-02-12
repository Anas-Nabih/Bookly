import 'package:bookly/core/utils/image_loader.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FeaturedBookItem extends StatelessWidget {
  final String imageURL ;
  const FeaturedBookItem({Key? key,required this.imageURL}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.h,
      margin: EdgeInsets.only(left: 3.w),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.5),
          borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: ImageLoader.loadCachedNetworkImage(imageURL),
      ),
    );
  }
}
