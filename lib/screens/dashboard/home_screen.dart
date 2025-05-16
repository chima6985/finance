import 'package:finance_app/components/components.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});
  static const String id = 'homeScreen';

  @override
  Widget build(BuildContext context) {
    return DecoratedContinerThree(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            SizedBox(height: context.topPadding),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 18.sp,
                    child: Image.asset('assets/images/jpegs/avatar.png'),
                  ),
                  SizedBox(width: 12.w),
                  Text(
                    'Hello Daniel',
                    style: context.textTheme.headlineSmall!.copyWith(
                      fontFamily: 'CircularStd',
                    ),
                  ),
                  Spacer(),
                  SvgPicture.asset('assets/images/svgs/notification.svg'),
                ],
              ),
            ),
            SizedBox(height: 25.h),
            SizedBox(
              height: 150.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: [
                  _BalanceContainer(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Available Cash',
                              style: context.textTheme.bodyMedium!.copyWith(
                                fontFamily: 'CircularStd',
                                color: Color(0XFF4F5877),
                              ),
                            ),
                            SizedBox(width: 12.w),
                            Icon(Icons.visibility_off),
                            Spacer(),
                            GestureDetector(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0XFF4D84FF),
                                  borderRadius: BorderRadius.circular(4),
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.add, color: Colors.white),
                                      Text(
                                        'Add to Wallet',
                                        style: context.textTheme.bodyMedium!
                                            .copyWith(
                                              fontFamily: 'CircularStd',
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          '\$0.00',
                          style: context.textTheme.displayMedium!.copyWith(
                            fontFamily: 'CircularStd',
                            color: Color(0XFF001140),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8.h),
                  _BalanceContainer(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Available Cash',
                              style: context.textTheme.bodyMedium!.copyWith(
                                fontFamily: 'CircularStd',
                                color: Color(0XFF4F5877),
                              ),
                            ),
                            SizedBox(width: 12.w),
                            Icon(Icons.visibility_off),
                            Spacer(),
                            GestureDetector(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0XFF4D84FF),
                                  borderRadius: BorderRadius.circular(4),
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.add, color: Colors.white),
                                      Text(
                                        'Add to Wallet',
                                        style: context.textTheme.bodyMedium!
                                            .copyWith(
                                              fontFamily: 'CircularStd',
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          '\$0.00',
                          style: context.textTheme.displayMedium!.copyWith(
                            fontFamily: 'CircularStd',
                            color: Color(0XFF001140),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BalanceContainer extends StatelessWidget {
  const _BalanceContainer({super.key, required this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325.w,
      decoration: BoxDecoration(
        color: Color(0XFFE1E6F0),
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Padding(padding: const EdgeInsets.all(20.0), child: child),
    );
  }
}
