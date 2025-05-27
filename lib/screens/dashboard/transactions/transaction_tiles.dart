import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math';

class TransactionTiles extends StatelessWidget {
  const TransactionTiles({
    super.key,
    required this.title,
    required this.subtitle,
    required this.trailingText,
    required this.showDivider,
    required this.imagePath,
  });

  final String title;
  final String subtitle;
  final String trailingText;
  final bool showDivider;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 24.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imagePath),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: context.textTheme.bodyMedium!.copyWith(
                      fontFamily: 'CircularStd',
                      color: Color(0XFF001140),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          subtitle,
                          style: context.textTheme.titleMedium!.copyWith(
                            fontFamily: 'CircularStd',
                            color: Color(0XFF4F5877),
                          ),
                        ),
                      ),
                      Text(
                        trailingText,
                        style: context.textTheme.titleMedium!.copyWith(
                          fontFamily: 'CircularStd',
                          color: Color(0XFF4F5877),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  if (showDivider)
                    Divider(height: 1, thickness: 1, color: Color(0xFFEEEFF3)),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class AllTransactions extends StatelessWidget {
  AllTransactions({
    super.key,
    required this.title,
    required this.subtitle,
    required this.trailingText,
    required this.showDivider,
    required this.imagePath,
  });
  final String title;
  final String subtitle;
  final String trailingText;
  final bool showDivider;
  final String imagePath;

  final List<String> imageOptions = [
    'assets/images/jpegs/out.png',
    'assets/images/jpegs/in.png',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:
          List.generate(5, (index) {
            final randomIndex = Random().nextInt(imageOptions.length);
            final imagePath = imageOptions[randomIndex];
            final title =
                (imagePath == 'assets/images/jpegs/in.png')
                    ? 'Purchased 100 WeMove Tec...'
                    : 'Sold 100 WeMove Tec..';
            imageOptions[Random().nextInt(imageOptions.length)];
            return TransactionTiles(
              title: title,
              subtitle: subtitle,
              trailingText: trailingText,
              showDivider: showDivider,
              imagePath: imagePath,
            );
          }).toList(),
    );
  }
}

class Completed extends StatelessWidget {
  Completed({
    super.key,
    required this.title,
    required this.subtitle,
    required this.trailingText,
    required this.showDivider,
    required this.imagePath,
  });

  final String title;
  final String subtitle;
  final String trailingText;
  final bool showDivider;
  final String imagePath;

  final List<String> imageOptions = [
    'assets/images/jpegs/out.png',
    'assets/images/jpegs/in.png',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:
          List.generate(8, (index) {
            final randomIndex = Random().nextInt(imageOptions.length);
            final imagePath = imageOptions[randomIndex];
            final title =
                (imagePath == 'assets/images/jpegs/in.png')
                    ? 'Purchased 100 WeMove Tec...'
                    : 'Sold 100 WeMove Tec..';
            imageOptions[Random().nextInt(imageOptions.length)];
            return TransactionTiles(
              title: title,
              subtitle: subtitle,
              trailingText: trailingText,
              showDivider: showDivider,
              imagePath: imagePath,
            );
          }).toList(),
    );
  }
}
