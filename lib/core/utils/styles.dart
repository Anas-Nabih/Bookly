import 'package:bookly/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

abstract class Styles {
  static TextStyle kMonsterratLarge = TextStyle(
      fontFamily: Const.kMontserrat,
      fontSize: 14.sp,
      fontWeight: FontWeight.w600);

  static TextStyle kMonsterratMedium = TextStyle(
      fontFamily: Const.kMontserrat,
      fontSize: 15.sp,
      fontWeight: FontWeight.w600);

  static TextStyle kMonsterratSmall = TextStyle(
      fontFamily: Const.kMontserrat,
      fontSize: 11.sp,
      fontWeight: FontWeight.w400);

  static TextStyle kSectraFineTitleMedium = TextStyle(
      fontFamily: Const.kGTSectraFine,
      color: Colors.white.withOpacity(0.95),
      fontSize: 15.sp,
      fontWeight: FontWeight.w500);
}
