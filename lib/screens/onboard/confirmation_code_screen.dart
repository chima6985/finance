import 'package:finance_app/components/components.dart';
import 'package:finance_app/components/custom_pin_field.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmationCodeScreen extends StatelessWidget {
  const ConfirmationCodeScreen({super.key});

  static const String id = 'confirmationCodeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedContainerTwo(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: context.topPadding),
                CustomBackButton(buttonColor: Color(0XFF8791A7)),
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
                CustomPinField(length: 6,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
