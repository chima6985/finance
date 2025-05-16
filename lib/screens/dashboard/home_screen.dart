import 'package:finance_app/components/components.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:finance_app/screens/dashboard/home_screen_widgets.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});
  static const String id = 'homeScreen';

  @override
  Widget build(BuildContext context) {
    final isVisible = useState(true);

    return DecoratedContinerThree(
      child: Column(
        children: [
          SizedBox(height: context.topPadding),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(
                    'assets/images/svgs/notification.svg',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25.h),
          SizedBox(
            height: 130.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              children: [
                BalanceContainer(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
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
                            InkWell(
                              onTap: () {
                                isVisible.value = !isVisible.value;
                              },
                              child: Icon(
                                isVisible.value
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),
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
                          isVisible.value ? '\$0.00' : '****',
                          style: context.textTheme.displayMedium!.copyWith(
                            fontFamily: 'CircularStd',
                            color: Color(0XFF001140),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 8.h),
                BalanceContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Tokens(
                            child: TokenItem(
                              imagePath: 'assets/images/jpegs/breeze.png',
                              amount: '100',
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Tokens(
                            child: TokenItem(
                              imagePath: 'assets/images/jpegs/flcn.png',
                              amount: '130',
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Tokens(
                            child: TokenItem(
                              imagePath: 'assets/images/jpegs/on.png',
                              amount: '100',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            'View all my tokens',
                            style: context.textTheme.bodyMedium!.copyWith(
                              fontFamily: 'CircularStd',
                              color: Color(0Xff4D84FF),
                            ),
                          ),
                          SizedBox(width: 4.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                            color: Color(0XFF4D84FF),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0XFFFCEDE9),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 12,
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/images/jpegs/alert.png'),
                        SizedBox(width: 8.w),
                        Text(
                          'Verify your information',
                          style: context.textTheme.titleLarge!.copyWith(
                            fontFamily: 'CircularStd',
                            color: Color(0XFF693221),
                          ),
                        ),
                        Spacer(),
                        Image.asset('assets/images/jpegs/shield.png'),
                      ],
                    ),
                  ),
                  SizedBox(height: 12.h),
                  SizedBox(
                    width: double.infinity,
                    child: Divider(
                      thickness: 2,
                      color: Colors.white,
                      height: 2,
                    ),
                  ),
                  SizedBox(height: 14.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 15,
                    ),
                    child: Text(
                      'Please complete your verification process in order to start trading',
                      style: context.textTheme.bodyMedium!.copyWith(
                        fontFamily: 'CircularStd',
                        color: Color(0XFF693221),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 32.h),
          Container(
            color: Color(0XFFF8F9FC),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Top Selling',
                        style: context.textTheme.headlineSmall!.copyWith(
                          fontFamily: 'CircularStd',
                          color: Color(0XFF001140),
                        ),
                      ),
                      Spacer(),
                      Text(
                        'See all',
                        style: context.textTheme.bodyMedium!.copyWith(
                          fontFamily: 'CircularStd',
                          color: Color(0XFF4D84FF),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.h),
                  TokenRate(
                    imagePath: 'assets/images/jpegs/breeze.png',
                    title: 'BREZ',
                    rate: '+1.63%',
                    color: Color(0XFF27AE60),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
