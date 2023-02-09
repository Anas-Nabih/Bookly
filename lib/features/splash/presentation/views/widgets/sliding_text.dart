import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    Key? key,
    required Animation<Offset> slidingAnimation,
  })  : _slidingAnimation = slidingAnimation,
        super(key: key);

  final Animation<Offset> _slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: _slidingAnimation,
            child: Text(
              'Read Free Books',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.sp),
            ),
          );
        });
  }
}
