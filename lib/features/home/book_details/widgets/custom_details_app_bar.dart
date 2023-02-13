import 'package:bookShelf/features/home/book_details/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class CustomDetailsAppBar extends StatelessWidget {
  const CustomDetailsAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIcon(
            svgImg: "assets/svg/cancel.svg",
            onTapped: () => Navigator.pop(context)),
        const Spacer(),
        CustomIcon(svgImg: "assets/svg/cart.svg", onTapped: () {}),
      ],
    );
  }
}
