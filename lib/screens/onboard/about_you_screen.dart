import 'package:finance_app/components/custom_back_button.dart';
import 'package:finance_app/components/decorated_container_two.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutYouScreen extends HookWidget {
  const AboutYouScreen({super.key});

  static const String id = 'aboutYouScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D0E12),
      body: DecoratedContainerTwo(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomBackButton(buttonColor: Color(0XFF8791A7)),
                SizedBox(height: 25.h),
                Text(
                  'Tell us more about you',
                  style: context.textTheme.headlineSmall!.copyWith(
                    fontFamily: 'CircularStd',
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
