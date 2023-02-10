import 'package:bookly/core/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TextHeadline extends StatelessWidget {
  const TextHeadline({
    Key? key,required this.headLine
  }) : super(key: key);

  final String headLine;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Const.horizontalPadding, vertical: Const.verticalPadding),
      child: Text(
       headLine ,
        style: Styles.kMonsterratLarge,
      ),
    );
  }
}
