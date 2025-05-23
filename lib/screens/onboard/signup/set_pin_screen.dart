import 'package:finance_app/components/components.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:finance_app/screens/onboard/onboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SetPinScreen extends StatelessWidget {
  const SetPinScreen({super.key});

  static const String id = 'setPinScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedContainerTwo(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: context.topPadding),
                CustomBackButton(
                  avatarColor: Color(0XFF27282B),
                  arrowColor: Color(0XFF8791A7),
                ),
                SizedBox(height: 25.h),
                Text(
                  'Set your 4-digit PIN',
                  style: context.textTheme.headlineSmall!.copyWith(
                    fontFamily: 'CircularStd',
                    fontSize: 24.sp,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'You’ll use this PIN for signing in and confirming your transactions',
                  style: context.textTheme.bodyMedium!.copyWith(
                    fontFamily: 'CircularStd',
                    color: Color(0XFF8791A7),
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 48),
                CustomPinField(
                  length: 4,
                  onComplete: (p0) async {
                    await Future.delayed(Duration(seconds: 2), () {
                      context.pushNamed(PinConfirmationScreen.id);
                    });
                  },
                ),
                Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    'Please make sure to put a pin you can\neasily remember.',
                    style: context.textTheme.bodyLarge!.copyWith(
                      fontFamily: 'CircularStd',
                      color: Color(0XFF8791A7),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
