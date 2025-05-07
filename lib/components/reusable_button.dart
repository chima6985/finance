import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  const ReusableButton({
    super.key,
    this.color,
    this.width,
    required this.child,
    this.borderRadius,
    this.height,
    this.onTap,
  });

  final Color? color;
  final double? width;
  final Widget? child;
  final double? borderRadius;
  final double? height;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final mqr = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? mqr.width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(borderRadius!),
        ),
        child: Center(child: child),
      ),
    );
  }
}
