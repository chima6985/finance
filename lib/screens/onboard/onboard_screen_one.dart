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
        child: Column(
          children: [
            SizedBox(height: context.topPadding),
            SizedBox(
              height: 29.h,
              width: 72.w,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0XFF092E95),
                ),
                child: Center(
                  child: Text('Skip', style: context.textTheme.titleMedium),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
