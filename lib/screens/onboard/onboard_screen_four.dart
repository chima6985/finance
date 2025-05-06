import 'package:finance_app/components/decorated_container.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnboardScreenFour extends StatelessWidget {
  const OnboardScreenFour({super.key});

  static const String id = 'onboardScreenfour';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedContainer(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              SizedBox(height: context.topPadding + 10),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 29.h,
                  width: 72.w,
                  child: ElevatedButton(
                    onPressed: () {
                      context.pop();
                    },
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
              Image.asset('assets/images/jpegs/wallet.png'),
              SizedBox(height: 73.h),
              Text(
                'Liquidate instantly or keep building your \n portfolio is totally up to you',
                textAlign: TextAlign.center,
                style: context.textTheme.headlineSmall!.copyWith(
                  fontFamily: 'CircularStd',
                ),
              ),
              SizedBox(height: 24.h),
              Text(
                'A secure and easy medium through which \n you can trade your tokens',
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
                        onPressed: () {
                          context.pushNamed('');
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
