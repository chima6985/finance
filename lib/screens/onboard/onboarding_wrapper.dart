import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'onboard.dart';

class OnboardingWrapper extends StatefulWidget {
  const OnboardingWrapper({super.key});

  static const String id = 'onboardingWrapper';

  @override
  State<OnboardingWrapper> createState() => _OnboardingWrapperState();
}

class _OnboardingWrapperState extends State<OnboardingWrapper> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _next() {
    if (_currentPage < 3) {
      _pageController.nextPage(
        duration: Duration(milliseconds: (1.5 * 1000).toInt()),
        curve: Curves.easeInOut,
      );
    }
  }

  void _skip() => _pageController.jumpToPage(3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            scrollDirection: Axis.vertical,
            physics: const ClampingScrollPhysics(),
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentPage = index);
            },
            children: const [
              OnboardScreenOne(),
              OnboardScreenTwo(),
              OnboardScreenThree(),
              OnboardScreenFour(),
            ],
          ),
          if (_currentPage < 3)
            Positioned(
              top: context.topPadding + 10,
              right: 15,
              child: SizedBox(
                height: 29.h,
                width: 72.w,
                child: ElevatedButton(
                  onPressed: _skip,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0XFF092E95),
                  ),
                  child: Center(
                    child: Text(
                      'Skip',
                      style: context.textTheme.titleMedium!.copyWith(
                        fontFamily: 'CircularStd',
                      ),
                    ),
                  ),
                ),
              ),
            ),

          if (_currentPage < 3)
            Positioned(
              bottom: 40,
              left: 15,
              right: 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: 4,
                    axisDirection: Axis.vertical,
                    effect: ExpandingDotsEffect(
                      dotColor: const Color(0XFF153CA899),
                      activeDotColor: const Color(0XFF27AE60),
                      dotHeight: 10,
                      dotWidth: 10,
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                    width: 120.w,
                    child: ElevatedButton(
                      onPressed: _next,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0XFF27AE60),
                      ),
                      child: Center(
                        child: Text(
                          'Next',
                          style: context.textTheme.titleMedium!.copyWith(
                            fontFamily: 'CircularStd',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
