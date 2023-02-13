import 'package:bookShelf/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorMSG extends StatelessWidget {
  final String errorMSG;
  const CustomErrorMSG({Key? key,required this.errorMSG}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(errorMSG,style: Styles.kMonsterratMedium,);
  }
}
