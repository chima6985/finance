import 'package:finance_app/components/custom_back_button.dart';
import 'package:finance_app/components/decorated_container_two.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:go_router/go_router.dart';

class SignUpScreen extends HookWidget {
  static const String id = 'signUpScreen';

  @override
  Widget build(BuildContext context) {
    final _controller = useTextEditingController();
    final mqr = MediaQuery.of(context).size;
    return Scaffold(
      body: DecoratedContainerTwo(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: context.topPadding),
              CustomBackButton(buttonColor: Color(0XFF8791A7)),
              SizedBox(height: 25.h),
              Text(
                'Enter your email and password',
                style: context.textTheme.headlineSmall!.copyWith(
                  fontFamily: 'CircularStd',
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                'Safe & Secure. We will never share your\ndata.',
                style: context.textTheme.bodyMedium!.copyWith(
                  fontFamily: 'CircularStd',
                ),
              ),
              SizedBox(height: 32.h),
              TextField()
            ],
          ),
        ),
      ),
    );
  }
}
