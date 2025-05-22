import 'package:finance_app/app_route.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:
      context.isTablet ? const Size(768, 1280) : const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder:
          (context, child) => MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(fontFamily: 'CircularStd').copyWith(textTheme: _lightTextTheme),
            routerConfig: router,
          ),
    );
  }
}

final _lightTextTheme = const TextTheme(
  displayLarge: TextStyle(
    fontFamily: 'CircularStd',
    fontSize: 24,
    color: Colors.white,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.2,
  ),
  displayMedium: TextStyle(
    fontFamily: 'CircularStd',
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.w700,
  ),
  headlineSmall: TextStyle(
    fontFamily: 'CircularStd',
    fontSize: 18,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  ),
  titleLarge: TextStyle(
    fontFamily: 'CircularStd',
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  ),
  bodyLarge: TextStyle(
    fontFamily: 'CircularStd',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.white,
    // height: 1.25,
  ),
  bodyMedium: TextStyle(
    fontFamily: 'CircularStd',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  ),
  titleMedium: TextStyle(
    fontFamily: 'CircularStd',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  ),
  titleSmall: TextStyle(
    fontFamily: 'CircularStd',
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  ),
);
