import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter/material.dart';

class CustomDialog {
  static void show({
    required BuildContext context,
    required Widget icon,
    required Widget content,
    required String primaryButtonText,
    required VoidCallback onPrimaryPressed,
    required String secondaryButtonText,
    required VoidCallback onSecondaryPressed,
    required VoidCallback onCancelPressed,
    required Color buttonColor,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder:
          (_) => Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  icon,
                  content,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: onSecondaryPressed,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(secondaryButtonText, style: context.textTheme.bodyLarge!.copyWith(fontFamily: 'CircularStd',),),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: buttonColor
                        ),
                        child: ElevatedButton(
                          onPressed: onPrimaryPressed,
                          child: Text(primaryButtonText),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
    );

    // Cancel button outside
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder:
          (_) => Positioned(
            bottom: 30,
            left: MediaQuery.of(context).size.width / 2 - 24,
            child: GestureDetector(
              onTap: onCancelPressed,
              child: const CircleAvatar(
                radius: 24,
                backgroundColor: Colors.white,
                child: Icon(Icons.close, color: Colors.black),
              ),
            ),
          ),
    );
  }
}
