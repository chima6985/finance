import 'package:finance_app/components/components.dart';
import 'package:finance_app/components/transaction_dialogue.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:finance_app/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class TransactionScreen extends HookWidget {
  const TransactionScreen({super.key, this.initialIndex = 2});
  static const String id = 'transactionScreen';
  final int initialIndex;

  @override
  Widget build(BuildContext context) {
    final currentPosition = useState(initialIndex);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Color(0XFFFFFFFF)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.w),
            child: Column(
              children: [
                SizedBox(height: context.topPadding + 15),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          TransactionDialogue.show(
                            context: context,
                            title: 'Transaction Summary',
                            remark:'Purchased 100 Fluidcoin Token',
                            imagePath: 'assets/images/jpegs/flcn.png',
                            primaryButtonText:'Close',
                            statusText:'Completed',
                            containerColor: Color(0XFF4D84FF) ,
                            buttonTextColor:Color(0XFFFFFFFF),
                            textcolor: Color(0XFF27AE60) ,
                            secondaryButtonText:'Share',
                          );
                        },
                        child: Text(
                          'Transactions',
                          style: context.textTheme.displayMedium!.copyWith(
                            fontFamily: 'CircularStd',
                            fontSize: 24,
                            color: Color(0XFF001140),
                          ),
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(
                          'assets/images/svgs/filters.svg',
                        ),
                      ),
                      SizedBox(width: 20.w),
                      InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(
                          'assets/images/svgs/search_icon.svg',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Container(
                      height: 32.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: Color(0XFFE1E6F0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: TabBar(
                          indicatorSize: TabBarIndicatorSize.tab,
                          dividerColor: Colors.black.withAlpha(1),
                          indicator: BoxDecoration(
                            color: Color(0XFFFFFFFF),
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 2),
                                blurRadius: 2,
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          tabs: [
                            TabItem(title: 'All'),
                            TabItem(title: 'Completed'),
                            TabItem(title: 'pending'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 8.h, left: 20.w, right: 20.w),
                    child: TabBarView(
                      children: [
                        TransactionTiles(
                          title: 'Purchased 100 WeMove Tec...',
                          subtitle: 'GETXN_TKN_BUY_954675741',
                          trailingText: 'Today',
                          showDivider: true,
                          imagePath: 'assets/images/jpegs/out.png',
                        ),
                        TransactionTiles(
                          title: 'Purchased 200 Paystack token...',
                          subtitle: 'GETXN_TKN_BUY_954675741',
                          trailingText: 'Today',
                          showDivider: true,
                          imagePath: 'assets/images/jpegs/out.png',
                        ),
                        TransactionTiles(
                          title: 'Wallet funding',
                          subtitle: 'N200,000',
                          trailingText: 'Today',
                          showDivider: true,
                          imagePath: 'assets/images/jpegs/in.png',
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(color: Color(0XFF4F5877).withAlpha(50)),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: context.btmPadding + 10,
                    right: 20.w,
                    left: 20.w,
                    top: 8,
                  ),
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment:
                          context.isTablet
                              ? MainAxisAlignment.center
                              : MainAxisAlignment.spaceBetween,
                      children: [
                        BottomNavButton(
                          buttonName: 'OverView',
                          buttonIcon: 'assets/images/svgs/overview.svg',
                          currentPosition: currentPosition.value,
                          onPressed: () {
                            if (0 != currentPosition.value) {
                              currentPosition.value = 0;
                              HapticFeedback.lightImpact();
                              context.pushNamed(HomeScreen.id);
                            }
                          },
                        ),
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
          ),
        ),
      ),
    );
  }
}
