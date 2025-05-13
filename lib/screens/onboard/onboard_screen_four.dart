import 'dart:developer';
import 'package:finance_app/components/components.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:country_picker/country_picker.dart';
import 'package:finance_app/screens/onboard/onboard.dart';



class OnboardScreenFour extends StatelessWidget {
  const OnboardScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedContainer(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Expanded(flex: 1, child: SizedBox()),

                Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/jpegs/wallet.png'),
                      SizedBox(height: 65.h),
                      Text(
                        'Liquidate instantly or keep building your \n portfolio is totally up to you',
                        textAlign: TextAlign.center,
                        style: context.textTheme.headlineSmall!.copyWith(
                          fontFamily: 'CircularStd',
                        ),
                      ),
                      SizedBox(height: 24.h),
                      Text(
                        'A secure and easy medium through which \n you can trade your tokens',
                        textAlign: TextAlign.center,
                        style: context.textTheme.titleMedium!.copyWith(
                          fontFamily: 'CircularStd',
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ReusableButton(
                        color: Color(0XFF4D84FF),
                        height: 55.h,
                        width: double.infinity,
                        borderRadius: 4,
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            backgroundColor: Color(0XFF27282B),
                            isDismissible: true,
                            enableDrag: false,
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(24),
                              ),
                            ),
                            builder:
                                (context) => Container(
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
                                      SizedBox(height: 32.h),
                                      Text(
                                        'Let’s Set up Your Account',
                                        style: context.textTheme.headlineSmall!
                                            .copyWith(
                                              fontFamily: 'CircularStd',
                                            ),
                                      ),
                                      SizedBox(height: 16.h),
                                      Text(
                                        'What country do you live in ?',
                                        style: context.textTheme.bodyMedium!
                                            .copyWith(
                                              fontFamily: 'CircularStd',
                                            ),
                                      ),
                                      SizedBox(height: 40.h),
                                      ReusableButton(
                                        color: Color(0XFF14151A),
                                        height: 48.h,
                                        width: double.infinity,
                                        borderRadius: 4.h,
                                        onTap: () {
                                          showCountryPicker(
                                            context: context,
                                            countryListTheme:
                                                CountryListThemeData(
                                                  flagSize: 25,
                                                  backgroundColor: Color(
                                                    0XFF1F2023,
                                                  ),
                                                  bottomSheetHeight: 500,
                                                  textStyle: context
                                                      .textTheme
                                                      .bodyMedium!
                                                      .copyWith(
                                                        fontFamily:
                                                            'CircularStd',
                                                      ),
                                                  inputDecoration:
                                                      InputDecoration(
                                                        labelText: 'Search',
                                                        labelStyle: context
                                                            .textTheme
                                                            .headlineSmall!
                                                            .copyWith(
                                                              fontFamily:
                                                                  'Circular Std',
                                                            ),
                                                        hintText: 'chima',
                                                        hintStyle: context
                                                            .textTheme
                                                            .bodyMedium!
                                                            .copyWith(
                                                              fontFamily:
                                                                  'Circular Std',
                                                            ),
                                                      ),
                                                ),

                                            showPhoneCode: false,
                                            onSelect: (Country country) {
                                              log(
                                                'Select country: ${country.displayName}',
                                              );
                                            },
                                          );
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 20,
                                            vertical: 12,
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Select Country',
                                                style: context
                                                    .textTheme
                                                    .bodyMedium!
                                                    .copyWith(
                                                      fontFamily: 'CircularStd',
                                                      color: Color(0XFF8791A7),
                                                    ),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_down,
                                                color: Color(0XFF8791A7),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 24.h),
                                      ReusableButton(
                                        color: Color(0XFF4D84FF),
                                        height: 55.h,
                                        width: double.infinity,
                                        borderRadius: 4.h,
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder:
                                                  (context) => SignUpScreen()
                                            ),
                                          );
                                        },
                                        child: Text(
                                          'Continue',
                                          style: context
                                              .textTheme
                                              .headlineSmall!
                                              .copyWith(
                                                fontFamily: 'CircularStd',
                                              ),
                                        ),
                                      ),
                                      SizedBox(height: 60.h),
                                    ],
                                  ),
                                ),
                          );
                        },
                        child: Text(
                          'Create A New Account',
                          style: context.textTheme.bodyLarge!.copyWith(
                            fontFamily: 'CircularStd',
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 24),
                      ReusableButton(
                        color: Color(0XFFF6F8FE),
                        height: 55.h,
                        width: double.infinity,
                        borderRadius: 4,
                        onTap: () {},
                        child: Text(
                          'Log In',
                          style: context.textTheme.bodyLarge!.copyWith(
                            fontFamily: 'CircularStd',
                            color: Color(0XFF4D84FF),
                          ),
                        ),
                      ),
                      SizedBox(height: 20), // Bottom padding
                    ],
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
