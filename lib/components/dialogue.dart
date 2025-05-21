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
                margin:  EdgeInsets.symmetric(horizontal: 20.h),
                padding: EdgeInsets.fromLTRB(20.h,30.h,20.h,21.h
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
                        InkWell(
                          onTap: onCancelPressed,
                          child: Container(
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
