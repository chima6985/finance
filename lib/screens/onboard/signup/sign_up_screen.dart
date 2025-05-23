import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:finance_app/screens/onboard/onboard.dart';
import 'package:finance_app/components/components.dart';



class SignUpScreen extends HookWidget {
  const SignUpScreen({super.key});
  static const String id = 'signUpScreen';

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final obscureText = useState(true);

    final hasUppercase = useState(false);
    final hasLowercase = useState(false);
    final hasNumber = useState(false);
    final hasSpecialChar = useState(false);

    void validatePassword(String password) {
      hasUppercase.value = password.contains(RegExp(r'[A-Z]'));
      hasLowercase.value = password.contains(RegExp(r'[a-z]'));
      hasNumber.value = password.contains(RegExp(r'[0-9]'));
      hasSpecialChar.value = password.contains(
        RegExp(r'[!@#$%^&*(),.?":{}|<>]'),
      );
    }

    useEffect(() {
      void listener() {
        validatePassword(passwordController.text);
      }

      passwordController.addListener(listener);

      return () => passwordController.removeListener(listener);
    }, [passwordController]);

    return Scaffold(
      backgroundColor: Color(0xFF0D0E12),
      body: DecoratedContainerTwo(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: context.topPadding),
                CustomBackButton(avatarColor: Color(0XFF27282B)),
                SizedBox(height: 25.h),
                Text(
                  'Enter your email and password',
                  style: context.textTheme.headlineSmall!.copyWith(
                    fontFamily: 'CircularStd',
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  'Safe & Secure. We will never share your\ndata.',
                  style: context.textTheme.bodyMedium!.copyWith(
                    fontFamily: 'CircularStd',
                    color: Color(0XFF8791A7),
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 32.h),
                SizedBox(
                  height: 54.h,
                  width: double.infinity,
                  child: CustomTextField(
                    controller: emailController,
                    hintText: 'Enter email address',
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: 24.h),
                SizedBox(
                  height: 54.h,
                  width: double.infinity,
                  child: CustomTextField(
                    controller: passwordController,
                    hintText: 'Enter password',
                    obscureText: obscureText.value,
                    suffixIcon: InkWell(
                      onTap: () {
                        obscureText.value = !obscureText.value;
                      },
                      child: Icon(
                        obscureText.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Color(0XFF8791A7),
                        size: 20.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    PasswordStrengthChecker(
                      label: 'Uppercase letter',
                      isValid: hasUppercase.value,
                    ),
                    SizedBox(width: 4.w),
                    PasswordStrengthChecker(
                      label: 'Lowercase letter',
                      isValid: hasLowercase.value,
                    ),
                    SizedBox(width: 4.w),
                    PasswordStrengthChecker(
                      label: 'Number',
                      isValid: hasNumber.value,
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
                PasswordStrengthChecker(
                  label: 'Special character',
                  isValid: hasSpecialChar.value,
                ),
                SizedBox(height: 264.h),
                ReusableButton(
                  color: Color(0XFF4D84FF),
                  height: 55.h,
                  width: double.infinity,
                  borderRadius: 4.h,
                  onTap: () {
                    context.pushNamed(AboutYouScreen.id);
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

class PasswordStrengthChecker extends StatelessWidget {
  const PasswordStrengthChecker({
    super.key,
    required this.label,
    required this.isValid,
  });

  final String label;
  final bool isValid;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
      decoration: BoxDecoration(
        color: Color(0XFF14151A),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: isValid ? Color(0XFF00D98B) : Color(0XFF333333),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isValid) Icon(Icons.check, color: Color(0XFF00D98B), size: 16.sp),
          if (isValid) SizedBox(width: 1.w),
          Text(
            label,
            style: TextStyle(
              fontFamily: 'CircularStd',
              color: isValid ? Color(0XFF00D98B) : Color(0XFF8791A7),
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}
