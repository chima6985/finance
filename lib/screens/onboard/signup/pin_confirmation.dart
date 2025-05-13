import 'package:finance_app/components/components.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PinConfirmationScreen extends StatelessWidget {
  const PinConfirmationScreen({super.key});

  static const String id = 'pinConfirmationScreen';
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
                CustomBackButton(buttonColor: Color(0XFF8791A7)),
                SizedBox(height: 25.h),
                Text(
                  'Confirm 4-digit PIN',
                  style: context.textTheme.headlineSmall!.copyWith(
                    fontFamily: 'CircularStd',
                    fontSize: 24.sp,
                  ),
                ),
                SizedBox(height: 80),
                CustomPinField(
                  length: 4,
                  onComplete: (p0) async {
                    await Future.delayed(Duration(seconds: 2), () {
                      // context.pushNamed(SelfieUploadScreen.id);
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
