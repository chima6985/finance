import 'package:finance_app/extension/context.extension.dart';
import 'package:finance_app/screens/onboard/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:finance_app/components/components.dart';
import 'package:intl/intl.dart';

class AboutYouScreen extends HookWidget {
  const AboutYouScreen({super.key});

  static const String id = 'aboutYouScreen';

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    final selcectedDate = useState<DateTime>();

    Future<void> pickDate(BuildContext context) async {
      final date = await showDatePicker(
        context: context, 
        initialDate: DateTime.now(),
        firstDate: DateTime(2000), 
        lastDate: DateTime(2024),);
            if (date != null){
      selcectedDate.value = date;
      controller.text = DateFormat('yyy-MM-dd').format(date);
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
                CustomBackButton(buttonColor: Color(0XFF8791A7)),
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
                  controller: controller,
                  hintText: 'First Name',
                  keyboardType:
                      TextInputType
                          .name, 
                ),
                SizedBox(height: 24.h),
                CustomTextField(
                  controller: controller,
                  hintText: 'Last Name',
                  keyboardType:
                      TextInputType
                          .name, 
                ),
                SizedBox(height: 24.h),
                CustomTextField(
                  controller: controller,
                  hintText: 'Phone Number',
                  keyboardType:
                      TextInputType
                          .number, 
                ),
                SizedBox(height: 24.h),
                CustomTextField(
                  controller: controller,
                  hintText: 'Date of birth',
                  suffixIcon: Icon(Icons.calendar_month),
                  keyboardType:
                      TextInputType
                          .emailAddress, 
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
