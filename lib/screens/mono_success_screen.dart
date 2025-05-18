import 'package:finance_app/components/components.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:finance_app/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MonoSuccessScreen extends StatelessWidget {
  const MonoSuccessScreen({super.key});

  static const String id = 'monoSuccessScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedContainerTwo(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: 170.h),
              Image.asset('assets/images/jpegs/success.png'),
              SizedBox(height: 30),
              Text(
                textAlign: TextAlign.center,
                'Application Submitted',
                style: context.textTheme.headlineSmall!.copyWith(
                  fontFamily: 'CircularStd',
                ),
              ),
              SizedBox(height: 24.h),
              Text(
                textAlign: TextAlign.center,
                'We’ll take it from here. While we are reviewing\nyour application, you can explore the app and\nbuild a watchlist',
                style: context.textTheme.bodyLarge!.copyWith(
                  fontFamily: 'CircularStd',
                  color: Color(0XFF8791A7),
                ),
              ),
              SizedBox(height: 220.h),
              ReusableButton(
                color: Color(0XFF4D84FF),
                height: 55.h,
                width: double.infinity,
                borderRadius: 4.h,
                onTap: () {
                  context.pushNamed(HomeScreen.id);
                },
                child: Text(
                  'Continue To Dashboard',
                  style: context.textTheme.headlineSmall!.copyWith(
                    fontFamily: 'CircularStd',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
