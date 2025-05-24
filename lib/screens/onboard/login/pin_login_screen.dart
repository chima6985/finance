import 'package:finance_app/components/components.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:finance_app/screens/onboard/onboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PinLoginScreen extends StatelessWidget {
  const PinLoginScreen({super.key});

  static const String id = 'pinLoginScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedContainerTwo(
        resize: true,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: context.topPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomBackButton(
                      avatarColor: Color(0XFF27282B),
                      arrowColor: Color(0XFF8791A7),
                    ),
                    Container(
                      decoration: BoxDecoration(color: Color(0XFF14151A)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 7,
                          vertical: 7,
                        ),
                        child: Text(
                          'Not Chima?',
                          style: context.textTheme.bodyMedium!.copyWith(
                            fontFamily: 'CircularStd',
                            color: Color(0XFF4D84FF),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25.h),
                Text(
                  'Welcome Back, Chima',
                  style: context.textTheme.headlineSmall!.copyWith(
                    fontFamily: 'CircularStd',
                    fontSize: 24.sp,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Please enter your PIN to log in',
                  style: context.textTheme.bodyMedium!.copyWith(
                    fontFamily: 'CircularStd',
                    color: Color(0XFF8791A7),
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 72.h),
                CustomPinField(
                  length: 4,
                  onComplete: (p0) async {
                    await Future.delayed(Duration(seconds: 2), () {
                      context.pushNamed(LoginScreen.id);
                    });
                  },
                ),
                SizedBox(height: 24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Forget PIN?',
                      style: context.textTheme.bodyMedium!.copyWith(
                        fontFamily: 'CircularStd',
                      ),
                    ),
                    Text(
                      'Reset Pin',
                      style: context.textTheme.bodyMedium!.copyWith(
                        fontFamily: 'CircularStd',
                        color: Color(0XFF4D84FF),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
