import 'package:finance_app/components/decorated_container.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardScreenTwo extends StatelessWidget {
  const OnboardScreenTwo({super.key});
  static const String id = 'onboardScreenTwo';

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
                'You’re taking a hunch to trust us, so we \n promise to protect your account',
                textAlign: TextAlign.center,
                style: context.textTheme.headlineSmall!.copyWith(
                  fontFamily: 'CircularStd',
                ),
              ),
               SizedBox(height: 24.h),
               Text(
                'Your capital is as secured as a bank vault, /n even better, you only have access to it',
                textAlign: TextAlign.center,
                style: context.textTheme.titleMedium!.copyWith(
                  fontFamily: 'CircularStd',
                ),
              ),
               SizedBox(height: 120.h),
               Row(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 50.h,
                      width: 120.w,
                      child: ElevatedButton(
                        onPressed: () {},
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
