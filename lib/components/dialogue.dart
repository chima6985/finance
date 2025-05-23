import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDialog {
  static void show({
    required BuildContext context,
    required Widget content,
    required String imagePath,
    required String primaryButtonText,
    required String secondaryButtonText,
    required Color buttonColor,
  }) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder:
          (_) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0XFFFFFFFF),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 25.h,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(imagePath),
                        SizedBox(height: 24.h),
                        content,
                        SizedBox(height: 30),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                primaryButtonText,
                                style: context.textTheme.bodyLarge!.copyWith(
                                  fontFamily: 'CircularStd',
                                  color: Color(0XFF4F5877),
                                ),
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: buttonColor,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    secondaryButtonText,
                                    style: context.textTheme.bodyLarge!
                                        .copyWith(fontFamily: 'CircularStd'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 45.h),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.cancel, color: Colors.white, size: 32),
                ),
              ],
            ),
          ),
    );
  }
}