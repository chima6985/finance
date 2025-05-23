import 'package:finance_app/components/components.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});
  static const String id = 'filterScreeen';

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0XFFFFFFFF)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: Column(
            children: [
              SizedBox(height: context.topPadding),
              Row(
                children: [
                  CustomBackButton(avatarColor: Color(0XFFD8EFFF)),
                  Spacer(),
                  Text(
                    'Filter Transactions',
                    style: context.textTheme.bodyLarge!.copyWith(
                      color: Color(0XFF001140),
                    ),
                  ),
                  Spacer(),
                  SvgPicture.asset('assets/images/svgs/refresh.svg'),
                ],
              ),
              SizedBox(height: 40.h),
              CheckboxListTile(
                value: isChecked,
                onChanged: (bool? newValue) {
                  setState(() {
                    isChecked = newValue;
                  });
                },
                title: Text(
                  'Bought',
                  style: context.textTheme.bodyMedium!.copyWith(
                    color: Color(0XFF001140),
                  ),
                ),
                secondary: Image.asset('assets/images/jpegs/in.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
