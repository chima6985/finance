import 'package:finance_app/components/decorated_container.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class OnboardScreenFour extends StatelessWidget {
  const OnboardScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedContainer(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/jpegs/wallet.png'),
              SizedBox(height: 65.h),
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
            ],
          ),
        ),
      ),
    );
  }
}
