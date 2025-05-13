import 'package:finance_app/components/decorated_container_two.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MonoScreen extends StatelessWidget {
  const MonoScreen({super.key});
  static const String id = 'monoScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedContainerTwo(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: 85.h),
              Image.asset('assets/images/jpegs/mono.png'),
              SizedBox(height: 32),
              Text(
                textAlign: TextAlign.center,
                'GetEquity uses Mono to\nlink your bank',
                style: context.textTheme.headlineSmall!.copyWith(
                  fontFamily: 'CircularStd',
                ),
              ),
              SizedBox(height: 40),
              _MonoTile(
                iconPath: 'assets/images/svg/check.svg',
                title: 'Secure',
                message:
                    'Transfer of all your information is encrypted end-to-end',
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
    super.key,
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
          leading: SvgPicture.asset(iconPath, width: 24, height: 24),
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