import 'package:finance_app/extension/context.extension.dart';
import 'package:finance_app/screens/dashboard/transactions/transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TransactionScreen extends HookWidget {
  const TransactionScreen({super.key});
  static const String id = 'transactionScreen';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Color(0XFFFFFFFF)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                SizedBox(height: context.topPadding + 15),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        
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
                      child: SvgPicture.asset('assets/images/svgs/filters.svg'),
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
                SizedBox(height: 25.h),
                Container(
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
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 8.h),
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
              ],
            ),
          ),
          //
        ),
      ),
    );
  }
}
