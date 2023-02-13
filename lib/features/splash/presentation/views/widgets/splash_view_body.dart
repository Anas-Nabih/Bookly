import 'package:bookShelf/core/utils/assets_data.dart';
import 'package:bookShelf/core/utils/image_loader.dart';
import 'package:bookShelf/core/utils/utils.dart';
import 'package:bookShelf/features/home/presentaion/views/home_view.dart';
import 'package:bookShelf/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
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
    handleNavigation();
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
        ImageLoader.loadImage(img: AssetsData.logo),
        SizedBox(height: 3.h),
        SlidingText(slidingAnimation: _slidingAnimation)
      ],
    );
  }

  handleAnimation() {
    _animationController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    _slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
            .animate(_animationController);
    _animationController.forward();
  }

  handleNavigation() {
    Future.delayed(
      const Duration(seconds: 2),
      () => Utils.push(context: context, navigationScreen: const HomeView()),
    );
  }
}
