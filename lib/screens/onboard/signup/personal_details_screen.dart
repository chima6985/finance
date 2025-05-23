import 'package:finance_app/extension/context.extension.dart';
import 'package:finance_app/screens/onboard/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:finance_app/components/components.dart';

class AboutYouScreen extends HookWidget {
  const AboutYouScreen({super.key});

  static const String id = 'aboutYouScreen';

  @override
  Widget build(BuildContext context) {
    final firstNamecontroller = useTextEditingController();
    final lastNameController = useTextEditingController();
    final phoneController = useTextEditingController();
    final dobController = useTextEditingController();

    void showDatepicker() async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990),
        lastDate: DateTime.now(),
      );
      if (picked != null) {
        dobController.text = '${picked.day}/${picked.month}/${picked.year}';
      }
    }

    return Scaffold(
      backgroundColor: Color(0xFF0D0E12),
      body: DecoratedContainerTwo(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: context.topPadding),
                CustomBackButton(avatarColor: Color(0XFF27282B)),
                SizedBox(height: 25.h),
                Text(
                  'Tell us more about you',
                  style: context.textTheme.headlineSmall!.copyWith(
                    fontFamily: 'CircularStd',
                    fontSize: 24.sp,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Please use your name as it appears in\nyour ID.',
                  style: context.textTheme.bodyMedium!.copyWith(
                    fontFamily: 'CircularStd',
                    color: Color(0XFF8791A7),
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 32.h),
                CustomTextField(
                  controller: firstNamecontroller,
                  hintText: 'First Name',
                  keyboardType:
                      TextInputType.name, // Change to TextInputType.name
                ),
                SizedBox(height: 24.h),
                CustomTextField(
                  controller: lastNameController,
                  hintText: 'Last Name',
                  keyboardType:
                      TextInputType.name, // Change to TextInputType.name
                ),
                SizedBox(height: 24.h),
                CustomTextField(
                  controller: phoneController,
                  hintText: 'Phone Number',
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 24.h),
                CustomTextField(
                  onTap: showDatepicker,
                  controller: dobController,
                  readOnly: true,
                  hintText: 'Date of birth',
                  suffixIcon: Icon(Icons.calendar_month),
                  keyboardType: TextInputType.none,
                ),
                SizedBox(height: 170.h),
                ReusableButton(
                  color: Color(0XFF4D84FF),
                  height: 55.h,
                  width: double.infinity,
                  borderRadius: 4.h,
                  onTap: () {
                    context.pushNamed(ConfirmationCodeScreen.id);
                  },
                  child: Text(
                    'Continue',
                    style: context.textTheme.headlineSmall!.copyWith(
                      fontFamily: 'CircularStd',
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
