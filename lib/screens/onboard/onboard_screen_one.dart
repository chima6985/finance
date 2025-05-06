import 'package:finance_app/components/decorated_container.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:go_router/go_router.dart';

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
              SizedBox(height: 120.h),
              Row(
                children: [
                  
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
