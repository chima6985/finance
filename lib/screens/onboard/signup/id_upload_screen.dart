import 'package:finance_app/components/components.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:finance_app/screens/onboard/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class IdUploadScreen extends StatelessWidget {
  const IdUploadScreen({super.key});
  static const String id = 'idUploadScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedContainerTwo(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                SizedBox(height: context.topPadding),
                CustomBackButton(avatarColor: Color(0XFF27282B)),
                SizedBox(height: 58.h),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0XFF4D84FF),
                      radius: 80.sp,
                      child: Image.asset('assets/images/jpegs/id.png'),
                    ),
                    SizedBox(height: 24.h),
                    Text(
                      textAlign: TextAlign.center,
                      'Upload a government issued ID card',
                      style: context.textTheme.displayMedium!.copyWith(
                        fontFamily: 'CircularStd',
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      textAlign: TextAlign.center,
                      'You can either upload; your Drivers\nLicense, National ID Card, Voters Card\nor International Passport',
                      style: context.textTheme.bodyMedium!.copyWith(
                        fontFamily: 'CircularStd',
                        color: Color(0XFF8791A7),
                      ),
                    ),
                    SizedBox(height: 78.h),
                    TextButton.icon(
                      icon: Icon(
                        Icons.file_upload_outlined,
                        color: Color(0XFF4D84FF),
                      ),
                      onPressed: () {},
                      label: Text(
                        'Upload',
                        style: context.textTheme.bodyLarge!.copyWith(
                          fontFamily: 'CircularStd',
                          color: Color(0XFF4D84FF),
                        ),
                      ),
                    ),
                    SizedBox(height: 117.h),
                    ReusableButton(
                      color: Color(0XFF4D84FF),
                      height: 55.h,
                      width: double.infinity,
                      borderRadius: 4.h,
                      onTap: () {
                        context.pushNamed(SetPinScreen.id);
                      },
                      child: Text(
                        'Continue',
                        style: context.textTheme.headlineSmall!.copyWith(
                          fontFamily: 'CircularStd',
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Skip Identity Upload',
                        style: context.textTheme.bodyLarge!.copyWith(
                          fontFamily: 'CircularStd',
                          color: Color(0XFF8791A7),
                        ),
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
