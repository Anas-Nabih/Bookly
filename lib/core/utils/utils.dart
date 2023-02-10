import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Utils{
  static loadImage({required String img}){
    return Image.asset(img);
  }

  static loadSvgImg({required String svgImg}){
    return SvgPicture.asset(svgImg,color: Colors.white,);
  }
}