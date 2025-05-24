import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BalanceContainer extends StatelessWidget {
  const BalanceContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      width: 325.w,
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
        borderRadius: BorderRadius.circular(4.r),
        border: Border.all(color: Color(0XFFE1E6F0), width: 1),
        boxShadow: [
          BoxShadow(
            color: Color(0XFF2C49890F),
            offset: Offset(0, 2),
            blurRadius: 4,
          ),
        ],
      ),
      child: Padding(padding: const EdgeInsets.all(15.0), child: child),
    );
  }
}

class Tokens extends StatelessWidget {
  const Tokens({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 90.w,
      decoration: BoxDecoration(
        color: Color(0XFFF0F4FD),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(padding: EdgeInsets.all(2.0.w), child: child),
    );
  }
}

class TokenItem extends StatelessWidget {
  const TokenItem({super.key, required this.imagePath, required this.amount});

  final String imagePath;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Tokens(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath),
          SizedBox(height: 1.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/svgs/coin.svg'),
              SizedBox(width: 2.w),
              Text(
                amount,
                style: context.textTheme.bodyMedium!.copyWith(
                  fontFamily: 'CircularStd',
                  color: Color(0XFF001140),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TokenRate extends StatelessWidget {
  const TokenRate({
    super.key,
    required this.imagePath,
    required this.title,
    required this.rate,
    required this.textcolor,
    required this.backgrouondColor,
  });

  final String imagePath;
  final String title;
  final String rate;
  final Color textcolor;
  final Color backgrouondColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 7,
            spreadRadius: 3,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      height: 130.h,
      width: 128.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath),
          SizedBox(height: 8.h),
          Text(
            title,
            style: context.textTheme.bodyMedium!.copyWith(
              fontFamily: 'CircularStd',
              color: Color(0XFF4F5877),
            ),
          ),
          SizedBox(height: 7.h),
          Container(
            height: 20.h,
            width: 65.h,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(58),
              color: backgrouondColor,
            ),
            child: Center(
              child: Text(
                rate,
                style: context.textTheme.titleMedium!.copyWith(
                  fontFamily: 'CircularStd',
                  color: textcolor,
                  // color: color,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
