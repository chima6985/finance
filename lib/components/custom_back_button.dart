import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, this.buttonColor, this.onTap});

  final Color? buttonColor;
  final VoidCallback? onTap;

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
            backgroundColor: Color(0XFF2C2C2E),
            child: Icon(Iconsax.arrow_left, color: buttonColor),
          ),
        ),
      ),
    );
  }
}
