import 'package:finance_app/components/components.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:finance_app/screens/dashboard/transactions/transaction_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:finance_app/screens/dashboard/home_screen_widgets.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key, this.initialIndex = 0});
  static const String id = 'homeScreen';
  final int initialIndex;

  @override
  Widget build(BuildContext context) {
    final currentPosition = useState(initialIndex);
    final isVisible = useState(true);
    final balanceContainerController = usePageController();

    return DecoratedContinerThree(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: context.topPadding),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.h),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18.sp,
                  child: Image.asset('assets/images/jpegs/avatar.png'),
                ),
                SizedBox(width: 12.w),
                InkWell(
                  onTap: () {
                    CustomDialog.show(
                      imagePath: 'assets/images/jpegs/notification_icon.png',
                      context: context,
                      primaryButtonText: 'Not Now',
                      buttonColor: Color(0XFf4D84FF),
                      secondaryButtonText: 'Turn on',
                      content: Column(
                        children: [
                          Text(
                            'Turn on notifications',
                            style: context.textTheme.headlineSmall!.copyWith(
                              fontFamily: 'CircularStd',
                              color: Color(0XFF001140),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            textAlign: TextAlign.center,
                            'You will get updates when important\nevents happen',
                            style: context.textTheme.bodyMedium!.copyWith(
                              fontFamily: 'CircularStd',
                              color: Color(0XFF001140),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Text(
                    'Hello Chima',
                    style: context.textTheme.headlineSmall!.copyWith(
                      fontFamily: 'CircularStd',
                    ),
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
                Stack(
                  children: [
                    BalanceContainer(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15..w),
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
                              isVisible.value ? '\$525 000.00 ' : '****',
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
                    Positioned(
                      bottom: 8,
                      right: 8,
                      child: PageIndicator(
                        balanceContainerController: balanceContainerController,
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
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
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  'View all my tokens',
                                  style: context.textTheme.bodyMedium!.copyWith(
                                    fontFamily: 'CircularStd',
                                    color: Color(0Xff4D84FF),
                                  ),
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
                    Positioned(
                      bottom: 8,
                      right: 8,
                      child: PageIndicator(
                        balanceContainerController: balanceContainerController,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 24.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  showDragHandle: false,
                  context: context,
                  backgroundColor: Color(0XFFFFFFFF),
                  isDismissible: true,
                  enableDrag: true,
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  builder:
                      (context) => Padding(
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
                        child: SingleChildScrollView(
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 16,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Divider(
                                  color: Color(0XFFD0D5E0),
                                  indent: 145.w,
                                  endIndent: 145.w,
                                  thickness: 2,
                                ),
                                SizedBox(height: 35.h),
                                Image.asset('assets/images/jpegs/download.png'),
                                SizedBox(height: 24.h),
                                Text(
                                  'New version available!',
                                  style: context.textTheme.headlineSmall!
                                      .copyWith(
                                        fontFamily: 'CircularStd',
                                        color: Color(0XFF001140),
                                      ),
                                ),
                                SizedBox(height: 16.h),
                                Text(
                                  textAlign: TextAlign.center,
                                  'There’s a new version of GetEquity available.\nUpdate your app on the App Store to get\nthe best experience',
                                  style: context.textTheme.bodyMedium!.copyWith(
                                    fontFamily: 'CircularStd',
                                    color: Color(0XFF001140),
                                  ),
                                ),
                                SizedBox(height: 24.h),
                                ReusableButton(
                                  color: Color(0XFF4D84FF),
                                  height: 55.h,
                                  width: double.infinity,
                                  borderRadius: 4.h,
                                  onTap: () {},
                                  child: Text(
                                    'Update GetEquity',
                                    style: context.textTheme.headlineSmall!
                                        .copyWith(fontFamily: 'CircularStd'),
                                  ),
                                ),
                                SizedBox(height: context.btmPadding),
                              ],
                            ),
                          ),
                        ),
                      ),
                );
              },
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
          ),
          SizedBox(height: 32.h),
          Container(
            color: Color(0XFFF8F9FC),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15..w, vertical: 10.h),
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
                  SizedBox(height: 18.h),
                  SizedBox(
                    height: 140.h,
                    child: ListView(
                      padding: EdgeInsets.all(5),
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      children: [
                        TokenRate(
                          imagePath: 'assets/images/jpegs/breeze.png',
                          title: 'BREZ',
                          rate: '+1.63%',
                          backgrouondColor: Color(0XFFE2F8EB),
                          textcolor: Color(0XFF27AE60),
                        ),
                        SizedBox(width: 16.w),
                        TokenRate(
                          imagePath: 'assets/images/jpegs/flcn.png',
                          title: 'FLCN',
                          rate: '-0.40%',
                          backgrouondColor: Color(0XFFFEE6E6),
                          textcolor: Color(0XFFE84343),
                        ),
                        SizedBox(width: 16.w),
                        TokenRate(
                          imagePath: 'assets/images/jpegs/on.png',
                          title: 'ON',
                          rate: '+1.63%',
                          backgrouondColor: Color(0XFFE2F8EB),
                          textcolor: Color(0XFF27AE60),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 14.h),
                ],
              ),
            ),
          ),
          SizedBox(height: 40.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 15.h),
            child: Text(
              'New-In',
              style: context.textTheme.headlineSmall!.copyWith(
                fontFamily: 'CircularStd',
                color: Color(0XFF001140),
              ),
            ),
          ),
          // SizedBox(height: 8.h),
          Divider(color: Color(0XFF4F5877).withAlpha(50)),
          SizedBox(
            child: Padding(
              padding: EdgeInsets.fromLTRB(15.w, 8.h, 15.w, context.btmPadding),
              child: Row(
                mainAxisAlignment:
                    context.isTablet
                        ? MainAxisAlignment.center
                        : MainAxisAlignment.spaceBetween,
                children: [
                  BottomNavButton(
                    buttonName: 'OverView',
                    buttonIcon: 'assets/images/svgs/overview.svg',
                    position: 0,
                    currentPosition: currentPosition.value,
                    onPressed: () {
                      if (0 != currentPosition.value) {
                        currentPosition.value = 0;
                        HapticFeedback.lightImpact();
                        context.pushNamed(HomeScreen.id);
                      }
                    },
                  ),
                  if (context.isTablet) SizedBox(width: 80.w),
                  BottomNavButton(
                    buttonName: 'Trade',
                    buttonIcon: 'assets/images/svgs/trade.svg',
                    position: 1,
                    currentPosition: currentPosition.value,
                    onPressed: () {
                      if (1 != currentPosition.value) {
                        currentPosition.value = 1;
                        HapticFeedback.lightImpact();
                      }
                    },
                  ),
                  if (context.isTablet) SizedBox(width: 80.w),
                  BottomNavButton(
                    buttonName: 'Transactions',
                    buttonIcon: 'assets/images/svgs/transaction.svg',
                    position: 2,
                    currentPosition: currentPosition.value,
                    onPressed: () {
                      if (2 != currentPosition.value) {
                        currentPosition.value = 2;
                        HapticFeedback.lightImpact();
                        context.pushNamed(TransactionScreen.id);
                      }
                    },
                  ),
                  if (context.isTablet) SizedBox(width: 80.w),
                  BottomNavButton(
                    buttonName: 'Wallet',
                    buttonIcon: 'assets/images/svgs/wallet.svg',
                    position: 3,
                    currentPosition: currentPosition.value,
                    onPressed: () {
                      if (3 != currentPosition.value) {
                        currentPosition.value = 3;
                        HapticFeedback.lightImpact();
                      }
                    },
                  ),
                  if (context.isTablet) SizedBox(width: 80.w),
                  BottomNavButton(
                    buttonName: 'More',
                    buttonIcon: 'assets/images/svgs/more.svg',
                    position: 4,
                    currentPosition: currentPosition.value,
                    onPressed: () {
                      if (4 != currentPosition.value) {
                        currentPosition.value = 4;
                        HapticFeedback.lightImpact();
                      }
                    },
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
