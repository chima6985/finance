// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:finance_app/screens/onboard/onboard.dart';
import 'package:finance_app/components/components.dart';
import 'package:http/http.dart' as http;

class SignUpScreen extends HookWidget {
  const SignUpScreen({super.key});
  static const String id = 'signUpScreen';

  @override
  Widget build(BuildContext context) {
    final isLoading = useState(false);
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

    bool isValidEmail(String email) {
      return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
    }

    bool isValidPassword() {
      return hasUppercase.value && 
             hasLowercase.value && 
             hasNumber.value && 
             hasSpecialChar.value &&
             passwordController.text.length >= 8;
    }

    Future<void> handleSignUp() async {
      final email = emailController.text.trim();
      final password = passwordController.text.trim();


      if (email.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Please enter your email address')),
        );
        return;
      }

      if (!isValidEmail(email)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Please enter a valid email address')),
        );
        return;
      }

      if (password.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Please enter your password')),
        );
        return;
      }

      if (!isValidPassword()) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Password must meet all requirements')),
        );
        return;
      }

      isLoading.value = true;

      try {
        final response = await http.post(
          Uri.parse('https://stg-msb-api.theseedfi.com/user/auth/signup'),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({
            'email': email,
            'password': password,
            'reenter_password': password,
          }),
        );

        if (response.statusCode == 201 || response.statusCode == 200) {
          
          context.pushNamed(AboutYouScreen.id);
        } else {
          log(response.body);
          final errorData = jsonDecode(response.body);
          final errorMessage = (errorData['message']);
          
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(errorMessage)),
          );
          log('Sign up failed: ${response.body}');
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Network error. Please check your connection.')),
        );
        log('Network error: $e');
      } finally {
        isLoading.value = false;
      }
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
        resize: true,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0.w),
          child: SingleChildScrollView(
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
                    fillColor: Color(0XFF14151A),
                    textColor: Color(0XFF8791A7),
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
                  onTap: isLoading.value ? null : handleSignUp, // All logic moved here
                  child: isLoading.value
                      ? SizedBox(
                          height: 20.sp,
                          width: 20.sp,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        )
                      : Text(
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
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 360;
    final isMediumScreen = screenWidth < 414;  
    final fontSize = isSmallScreen ? 11.sp : isMediumScreen ? 12.sp : 13.sp;
    final iconSize = isSmallScreen ? 10.sp : isMediumScreen ? 12.sp : 14.sp;
    final horizontalPadding = isSmallScreen ? 6.w : isMediumScreen ? 8.w : 10.w;
    final verticalPadding = isSmallScreen ? 4.h : isMediumScreen ? 6.h : 8.h;
    final iconTextSpacing = isSmallScreen ? 2.w : isMediumScreen ? 3.w : 4.w;

    return Container(
      constraints: BoxConstraints(
        minWidth: 0,
        maxWidth: screenWidth * 0.45, 
      ),
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      decoration: BoxDecoration(
        color: Color(0XFF14151A),
        borderRadius: BorderRadius.circular(6.r), 
        border: Border.all(
          color: isValid ? Color(0XFF00D98B) : Color(0XFF333333),
          width: 1.w, 
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (isValid) ...[
            Icon(
              Icons.check,
              color: Color(0XFF00D98B),
              size: iconSize,
            ),
            SizedBox(width: iconTextSpacing),
          ],
          Flexible(
            child: Text(
              label,
              style: TextStyle(
                fontFamily: 'CircularStd',
                color: isValid ? Color(0XFF00D98B) : Color(0XFF8791A7),
                fontSize: fontSize,
                fontWeight: FontWeight.w400,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}

// ?? 'Sign up failed. Please try again.';