import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDialog {
  static void show({
    required BuildContext context,
    required Widget content,
    required String imagePath,
    required String primaryButtonText,
    required VoidCallback onPrimaryPressed,
    required String secondaryButtonText,
    required VoidCallback onSecondaryPressed,
    required VoidCallback onCancelPressed,
    required Color buttonColor,
  }) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder:
          (_) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0XFFFFFFFF),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.only(
                  top: 30.h,
                  left: 20.w,
                  right: 20.w,
                  bottom: 21.h,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(imagePath),
                    SizedBox(height: 20.h),
                    content,
                    SizedBox(height: 30.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: onSecondaryPressed,
                          child: Text(
                            secondaryButtonText,
                            style: context.textTheme.bodyLarge!.copyWith(
                              fontFamily: 'CircularStd',
                              color: Color(0XFF4F5877),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: buttonColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              primaryButtonText,
                              style: context.textTheme.bodyLarge!.copyWith(
                                fontFamily: 'CircularStd',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.cancel, color: Colors.white, size: 32),
              ),
            ],
          ),
    );
  }
}
