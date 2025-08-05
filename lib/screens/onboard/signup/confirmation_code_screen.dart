// ignore_for_file: use_build_context_synchronously
import 'dart:convert';
import 'package:finance_app/components/components.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:finance_app/screens/onboard/onboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;

class ConfirmationCodeScreen extends StatelessWidget {
  const ConfirmationCodeScreen({super.key, required this.email});

  final String email;

  static const String id = 'confirmationCodeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedContainerTwo(
        resize: true,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
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
              CustomPinField(
                length: 6,
                onComplete: (p0) async {
                  try {
                    final response = await http.post(
                      Uri.parse(
                        'https://stg-msb-api.theseedfi.com/user/auth/verify-otp',
                      ),
                      headers: {'Content-Type': 'application/json'},
                      body: jsonEncode({'email': email, 'otp': p0}),
                    );

                    if (response.statusCode == 200 ||
                        response.statusCode == 201) {
                      context.pushNamed(SelfieUploadScreen.id);
                    } else {
                      final error = jsonDecode(response.body);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            error['message'] ?? 'OTP verification failed',
                          ),
                        ),
                      );
                    }
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Network error. Please try again.'),
                      ),
                    );
                  }
                },
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    // functionality for the resend password
                  },
                  child: Text(
                    'Resend Code',
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
    );
  }
}
