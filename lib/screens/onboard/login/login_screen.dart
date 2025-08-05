import 'package:finance_app/components/components.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends HookWidget {
  const LoginScreen({super.key});

  static const String id = 'loginScreen';

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final obscureText = useState(true);
    final isLoading = useState(false);
    return Scaffold(
      backgroundColor: Color(0xFF0D0E12),
      body: DecoratedContainerTwo(
        resize: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: context.topPadding + 20),

                Text(
                  'Welcome Back',
                  style: context.textTheme.headlineSmall!.copyWith(
                    fontFamily: 'CircularStd',
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  'Please log in to your account.',
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
                    fillColor: Color(0XFF14151A),
                    textColor: Color(0XFF8791A7),
                    hintText: 'Enter email address',
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: 24.h),
                SizedBox(
                  height: 54.h,
                  width: double.infinity,
                  child: CustomTextField(
                    fillColor: Color(0XFF14151A),
                    textColor: Color(0XFF8791A7),
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
                SizedBox(height: 24.h),
                Center(
                  child: Text(
                    'I forgot my password',
                    style: context.textTheme.bodyLarge!.copyWith(
                      fontFamily: 'CircularStd',
                      color: Color(0XFF4D84FF),
                    ),
                  ),
                ),
                SizedBox(height: 320.h),

                ReusableButton(
                  color: Color(0XFF4D84FF),
                  height: 55.h,
                  width: double.infinity,
                  borderRadius: 4.h,
                  onTap: () {
                    // context.pushNamed(AboutYouScreen.id);
                  },
                  child: Text(
                    'Log In',
                    style: context.textTheme.headlineSmall!.copyWith(
                      fontFamily: 'CircularStd',
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                TextButton(
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: context.textTheme.bodyLarge!.copyWith(
                        fontFamily: 'CircularStd',
                        color: Color(0XFF4D84FF),
                      ),
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
