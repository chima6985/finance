import 'package:flutter/material.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class TransactionDialogue {
  static void show({
    required BuildContext context,
    required String title,
    required String amount,
    required String remark,
    required Widget content,
    required String imagePath,
    required String primaryButtonText,
    required VoidCallback onPrimaryPressed,
    required String secondaryButtonText,
    required VoidCallback onSecondaryPressed,
    required VoidCallback onCancelPressed,
    required Color buttonColor,
  }) 
  
  {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder:
          (_) {
            final now = DateTime.now();
            final date = DateFormat('MMM d, y h:mm a').format(now);
            return Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: Color(0XFFFFFFFF),
                ),
                margin: EdgeInsets.symmetric(horizontal: 20.h),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20.h, 23.h, 20.h, 20.h),
                  child: Column(
                    children: [
                      Text(
                        title,
                        style: context.textTheme.headlineSmall!.copyWith(
                          color: Color(0XFF001140),
                        ),
                      ),
                      SizedBox(height: 30),
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              remark,
                              style: context.textTheme.bodyMedium!.copyWith(
                                color: Color(0XFF001140),
                              ),
                            ),
                            Spacer(),
                            Image.asset(imagePath),
                          ],
                        ),
                      ),
                      SizedBox(height: 24.h),
                      Divider(thickness: 1),
                      SizedBox(height: 26.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Amount',
                                style: context.textTheme.titleMedium!.copyWith(
                                  color: Color(0XFF8791A7),
                                ),
                              ),
                              Text(
                                '100',
                                style: context.textTheme.bodyMedium!.copyWith(
                                  color: Color(0XFF001140),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Type',
                                style: context.textTheme.titleMedium!.copyWith(
                                  color: Color(0XFF8791A7),
                                ),
                              ),
                              Text(
                                'Credit',
                                style: context.textTheme.bodyMedium!.copyWith(
                                  color: Color(0XFF001140),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(thickness: 1),
                      Row(
                        children: [
                                                    Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Date',
                                style: context.textTheme.titleMedium!.copyWith(
                                  color: Color(0XFF8791A7),
                                ),
                              ),
                              Text(date)
                            
                            ],
                          ),
                        ],)
                    ],
                  ),
                ),
              ),
            ],
          );
          } 
    );
  }
}
