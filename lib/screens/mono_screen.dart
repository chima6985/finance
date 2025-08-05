import 'package:finance_app/components/components.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:finance_app/screens/mono_success_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MonoScreen extends StatelessWidget {
  const MonoScreen({super.key});

  static const String id = 'monoScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedContainerTwo(
        resize: false,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: 100.h),
              Image.asset('assets/images/jpegs/mono.png'),
              SizedBox(height: 3),
              Text(
                textAlign: TextAlign.center,
                'GetEquity uses Mono to\nlink your bank',
                style: context.textTheme.headlineSmall!.copyWith(
                  fontFamily: 'CircularStd',
                ),
              ),
              SizedBox(height: 35.h),
              _MonoTile(
                iconPath: 'assets/images/jpegs/check.png',
                title: 'Secure',
                message:
                    'Transfer of all your information is encrypted\nend-to-end',
              ),
              SizedBox(height: 24.h),
              _MonoTile(
                iconPath: 'assets/images/jpegs/check.png',
                title: 'Secure',
                message:
                    'Transfer of all your information is encrypted\nend-to-end',
              ),
              SizedBox(height: 105.h),
              ReusableButton(
                color: Color(0XFF4D84FF),
                height: 55.h,
                width: double.infinity,
                borderRadius: 4.h,
                onTap: () {
                  context.pushNamed(MonoSuccessScreen.id);
                },
                child: Text(
                  'Continue',
                  style: context.textTheme.headlineSmall!.copyWith(
                    fontFamily: 'CircularStd',
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Skip',
                  style: context.textTheme.bodyLarge!.copyWith(
                    fontFamily: 'CircularStd',
                    color: Color(0XFF8791A7),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MonoTile extends StatelessWidget {
  const _MonoTile({
    required this.iconPath,
    required this.title,
    required this.message,
  });

  final String iconPath;
  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {},
          titleAlignment: ListTileTitleAlignment.top,
          leading: Image.asset(iconPath, width: 24, height: 24),
          title: Text(
            title,
            style: context.textTheme.bodyMedium!.copyWith(
              fontFamily: 'CircularStd',
            ),
          ),
          subtitle: Text(
            message,
            style: context.textTheme.titleMedium!.copyWith(
              fontFamily: 'CircularStd',
              color: Color(0XFF8791A7),
            ),
          ),
        ),
      ],
    );
  }
}
// } SvgPicture.asset('assets/images/svg/thick.svg'),
// Text('Secure',style: context.textTheme.bodyMedium!.copyWith(fontFamily: 'CircularStd'),),