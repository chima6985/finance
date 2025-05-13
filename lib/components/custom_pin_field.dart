import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/services.dart';

class CustomPinField extends StatelessWidget {
  const CustomPinField({
    super.key,
    this.controller,
    required this.length,
    this.onTap,
    this.obscureText = true,
    this.onComplete,
  });

  final TextEditingController? controller;
  final VoidCallback? onTap;
  final int length;
  final bool obscureText;
  final void Function(String)? onComplete;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: PinCodeTextField(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        appContext: context,
        length: length,
        keyboardType: TextInputType.numberWithOptions(decimal: true),
        enableActiveFill: true,
        controller: controller,
        animationType: AnimationType.fade,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Color(0XFF8791A7),
        ),
        obscuringCharacter: '*',
        obscureText: obscureText,
        onCompleted: onComplete,
        pinTheme: PinTheme(
          activeColor: Color(0XFF2D2D2F),
          selectedColor: Color(0XFF2D2D2F),
          inactiveColor: Color(0XFF2D2D2F),
          disabledColor: Color(0XFF14151A),
          activeFillColor: Color(0XFF2D2D2F),
          selectedFillColor: Color(0XFF2D2D2F),
          inactiveFillColor: Color(0XFF14151A),
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(5),
          fieldWidth: 48,
          fieldHeight: 48,
        ),
      ),
    );
  }
}
