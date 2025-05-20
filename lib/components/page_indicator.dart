import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({super.key, required this.balanceContainerController});
  final PageController balanceContainerController;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: balanceContainerController,
      count: 2,
      axisDirection: Axis.horizontal,
      effect: ColorTransitionEffect(
        dotColor: const Color(0XFF153CA899),
        activeDotColor: const Color(0XFF27AE60),
        dotHeight: 8,
        dotWidth: 8,
      ),
    );
  }
}
