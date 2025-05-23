import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
    this.onTap,
    this.avatarColor,
    this.arrowColor,
  });

  final VoidCallback? onTap;
  final Color? avatarColor;
  final Color? arrowColor;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: InkWell(
        onTap: onTap ?? () => context.pop(),
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: CircleAvatar(
            radius: 13.sp,
            backgroundColor: avatarColor,
            child: Icon(Iconsax.arrow_left, color: arrowColor),
          ),
        ),
      ),
    );
  }
}
