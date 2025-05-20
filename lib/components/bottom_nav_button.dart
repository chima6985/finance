import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavButton extends StatelessWidget {
  const BottomNavButton({
    super.key,
    required this.buttonName,
    required this.buttonIcon,
    this.position = 0,
    this.currentPosition = 0,
    required this.onPressed,
    this.animationController,
  });

  final String buttonName;
  final String buttonIcon;
  final int position;
  final int currentPosition;
  final void Function() onPressed;
  final Animation? animationController;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      splashColor: Colors.transparent,
      highlightColor: Color(0XFF4D84FF),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            buttonIcon,
            colorFilter: ColorFilter.mode(
              position == currentPosition
                  ? Color(0xFF4D84FF)
                  : Color(0XFF4F5877),
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            buttonName,
            textScaler: TextScaler.noScaling,
            style: TextStyle(
              fontFamily: 'CircularStd',
              fontSize: 10,
              color:
                  position == currentPosition
                      ? Color(0XFF135BFD)
                      : Color(0XFF4F5877),
            ),
          ),
        ],
      ),
    );
  }
}
