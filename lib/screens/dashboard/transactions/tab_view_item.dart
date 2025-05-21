import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  const TabItem({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: context.textTheme.bodyMedium!.copyWith(
          fontFamily: 'CircularStd',
          overflow: TextOverflow.ellipsis,
          color: Color(0XFF001140),
        ),
      ),
    );
  }
}
