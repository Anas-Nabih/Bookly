
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class ImageLoader {
  static CachedNetworkImage loadCachedNetworkImage(String url,
      {BoxFit fit = BoxFit.cover,
        double height = double.infinity,
        double width = double.infinity}) {
    return CachedNetworkImage(
      imageUrl: url,
      height: height,
      width: width,
      fit: fit,
      placeholder: (context, url) =>const  Padding(
        padding: EdgeInsets.all(12),
        child: Opacity(
          opacity: 0.6,
          child: FlutterLogo(),
        ),
      ),
      errorWidget: (context, url, error) => Padding(
        padding: EdgeInsets.all(3.w),
        child: const Opacity(
          opacity: 0.6,
          child: Icon(Icons.error),
        ),
      ),
    );
  }

  static loadImage({required String img}) {
    return Image.asset(
      img,
      // fit: BoxFit.cover,
      // height: double.infinity,
    );
  }

  static loadJsonAsset({required String jsonImg}) {
    return Lottie.asset(
      jsonImg,
    );
  }


  static loadSvgImg({required String svgImg}) {
    return SvgPicture.asset(
      svgImg,
      color: Colors.white,
    );
  }
}