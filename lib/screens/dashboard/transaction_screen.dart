import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TransactionScreen extends HookWidget {
  const TransactionScreen({super.key});
  static const String id = 'transactionScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0XFFFFFFFF)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(height: context.topPadding + 15),
              Row(
                children: [
                  Text(
                    'Transactions',
                    style: context.textTheme.displayMedium!.copyWith(
                      fontFamily: 'CircularStd',
                      fontSize: 24,
                      color: Color(0XFF001140),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset('assets/images/svgs/filter.svg'),
                  ),
                  SizedBox(width: 20.w),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset('assets/images/svgs/search.svg'),
                  ),
                ],
              ),
            ],
          ),
        ),
        //
      ),
    );
  }
}
