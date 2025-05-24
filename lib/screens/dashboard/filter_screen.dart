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
  final TextEditingController dateController = TextEditingController();

  void selectDate() async {
    final DateTime? picked = await showDatePicker(
      barrierLabel: 'Select Date',
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      dateController.text = '${picked.day}/${picked.month}/${picked.year}';
    }
  }

  List<String> options = ['Bought', 'Sold', 'Withdrawal', 'Deposits'];
  List<String> icons = [
    'assets/images/jpegs/in.png',
    'assets/images/jpegs/out.png',
    'assets/images/jpegs/withdrawal.png',
    'assets/images/jpegs/deposits.png',
  ];
  List<bool> checked = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
          decoration: BoxDecoration(color: Color(0XFFFFFFFF)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Column(
                    children: List.generate(options.length, (index) {
                      return CheckboxListTile(
                        value: checked[index],
                        onChanged: (isChecked) {
                          setState(() {
                            checked[index] = isChecked!;
                          });
                        },
                        activeColor: Color(0XFF4D84FF),
                        title: Text(
                          options[index],
                          style: context.textTheme.bodyMedium!.copyWith(
                            color: Color(0XFF001140),
                          ),
                        ),
                        secondary: Image.asset(
                          icons[index],
                          width: 24,
                          height: 24,
                        ),
                        contentPadding: EdgeInsets.zero,
                      );
                    }),
                  ),
                  SizedBox(height: 25.h),
                  Divider(color: Color(0XFFF0F4FD), thickness: 2),
                  SizedBox(height: 25.h),
                  Text(
                    'By Date',
                    style: context.textTheme.headlineSmall!.copyWith(
                      color: Color(0XFF001140),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  CustomTextField(
                    onTap: selectDate,
                    textColor: Colors.black,
                    readOnly: true,
                    controller: dateController,
                    fillColor: Color(0XFFFFFFFF),
                    hintText: 'Start Date',
                    hintStyle: context.textTheme.bodyMedium!.copyWith(
                      color: Color(0XFFA3A8B3),
                    ),
                    suffixIcon: Icon(Icons.calendar_month_sharp),
                  ),
                  SizedBox(height: 24.h),
                  CustomTextField(
                    textColor: Colors.black,
                    controller: dateController,
                    onTap: selectDate,
                    readOnly: true,
                    fillColor: Color(0XFFFFFFFF),
                    hintText: 'End Date',
                    hintStyle: context.textTheme.bodyMedium!.copyWith(
                      color: Color(0XFFA3A8B3),
                    ),
                    suffixIcon: Icon(Icons.calendar_month_sharp),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
