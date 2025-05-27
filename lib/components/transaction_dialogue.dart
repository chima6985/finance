import 'package:flutter/material.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class TransactionDialogue {
  static void show({
    required BuildContext context,
    required String title,
    required String remark,
    required String imagePath,
    required String primaryButtonText,
    required Color containerColor,
    required String statusText,
    required Color textcolor,
    required Color buttonTextColor,
    required String secondaryButtonText,
  }) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (_) {
        final now = DateTime.now();
        final date = DateFormat('MMM d, y h:mm a').format(now);
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: Color(0XFFFFFFFF),
                ),
                margin: EdgeInsets.symmetric(horizontal: 25.w),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        title,
                        style: context.textTheme.headlineSmall!.copyWith(
                          color: Color(0XFF001140),
                        ),
                      ),
                      SizedBox(height: 30.h),
                      Row(
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
                      SizedBox(height: 8.h),
                      Divider(thickness: 1),
                      SizedBox(height: 8.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Amount',
                                style: context.textTheme.titleMedium!.copyWith(
                                  color: Color(0XFF8791A7),
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                'N100,00',
                                style: context.textTheme.bodyMedium!.copyWith(
                                  color: Color(0XFF001140),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Type',
                                style: context.textTheme.titleMedium!.copyWith(
                                  color: Color(0XFF8791A7),
                                ),
                              ),
                              SizedBox(height: 4.h),
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
                      SizedBox(height: 8.h),
                      Divider(thickness: 1),
                      SizedBox(height: 8.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Date',
                                style: context.textTheme.titleMedium!.copyWith(
                                  color: Color(0XFF8791A7),
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                date,
                                style: context.textTheme.bodyMedium!.copyWith(
                                  color: Color(0XFF001140),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Status',
                                style: context.textTheme.titleMedium!.copyWith(
                                  color: Color(0XFF8791A7),
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                statusText,
                                style: context.textTheme.bodyMedium!.copyWith(
                                  color: textcolor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: 24.h),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: Text(
                              primaryButtonText,
                              style: context.textTheme.titleLarge!.copyWith(
                                color: Color(0XFF8791A7),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              color: containerColor,
                              borderRadius: BorderRadius.circular(4.r),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 10,
                              ),
                              child: Text(
                                secondaryButtonText,
                                style: context.textTheme.titleLarge!.copyWith(
                                  color: buttonTextColor,
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
        );
      },
    );
  }
}
