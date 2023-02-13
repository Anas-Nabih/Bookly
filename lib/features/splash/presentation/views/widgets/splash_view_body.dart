import 'package:bookShelf/core/utils/assets_data.dart';
import 'package:bookShelf/core/utils/utils.dart';
import 'package:bookShelf/features/home/presentation/views/home_view.dart';
import 'package:bookShelf/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slidingAnimation;

  @override
  void initState() {
    handleAnimation();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Lottie.asset(AssetsData.jsonLogo,
            height: 35.h,
            controller: _animationController,
            onLoaded: (composition) {
          _animationController
            ..duration = composition.duration
            ..forward().whenComplete(() => Utils.push(
                context: context, navigationScreen: const HomeView()));
        }),
        SlidingText(slidingAnimation: _slidingAnimation)
      ],
    );
  }

  handleAnimation() {
    _animationController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    _slidingAnimation =
        Tween<Offset>(begin: const Offset(0,5), end: Offset.zero)
            .animate(_animationController);
    _animationController.forward();
  }
}
