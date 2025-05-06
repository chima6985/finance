import 'package:finance_app/components/decorated_container.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:finance_app/screens/onboard/onboard_screen_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardScreenOne extends StatelessWidget {
  const OnboardScreenOne({super.key});

  static const String id = 'onboardScreenOne';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              SizedBox(height: context.topPadding + 10),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 29.h,
                  width: 72.w,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0XFF092E95),
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
              SizedBox(height: 139.h),
              Image.asset('assets/images/jpegs/buildings.png'),
              SizedBox(height: 73.h),
              Text(
                'We level the field by giving you access \n to tokenized commodity',
                textAlign: TextAlign.center,
                style: context.textTheme.headlineSmall!.copyWith(
                  fontFamily: 'CircularStd',
                ),
              ),
              SizedBox(height: 24.h),
              Text(
                'What this means is that you can buy stocks \n in your favorite companies easily',
                textAlign: TextAlign.center,
                style: context.textTheme.titleMedium!.copyWith(
                  fontFamily: 'CircularStd',
                ),
              ),
              SizedBox(height: 140.h),
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 50.h,
                      width: 120.w,
                      child: ElevatedButton(
                        onPressed: () {
                          context.pushNamed(OnboardScreenTwo.id);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0XFF27AE60),
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
