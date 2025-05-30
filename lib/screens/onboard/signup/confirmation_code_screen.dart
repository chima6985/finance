// ignore_for_file: use_build_context_synchronously

import 'package:finance_app/components/components.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:finance_app/screens/onboard/onboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ConfirmationCodeScreen extends StatelessWidget {
  const ConfirmationCodeScreen({super.key});

  static const String id = 'confirmationCodeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedContainerTwo(
        resize: true,
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
                'Enter your confirmation code',
                style: context.textTheme.headlineSmall!.copyWith(
                  fontFamily: 'CircularStd',
                  fontSize: 24.sp,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'We sent an email to oke@mail.com.\nPlease type it in',
                style: context.textTheme.bodyMedium!.copyWith(
                  fontFamily: 'CircularStd',
                  color: Color(0XFF8791A7),
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 48),
              CustomPinField(
                length: 5,
                onComplete: (p0) async {
                  await Future.delayed(Duration(seconds: 2), () {
                    context.pushNamed(SelfieUploadScreen.id);
                  });
                },
              ),
              Center(
                child: Text(
                  'Resend Code',
                  style: context.textTheme.bodyLarge!.copyWith(
                    fontFamily: 'CircularStd',
                    color: Color(0XFF4D84FF),
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
