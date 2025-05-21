import 'package:flutter/material.dart';
import 'package:finance_app/extension/context.extension.dart';

class TransactionDialogue {
    static void show({
    required BuildContext context,
    required Widget content,
    required String imagePath,
    required String primaryButtonText,
    required VoidCallback onPrimaryPressed,
    required String secondaryButtonText,
    required VoidCallback onSecondaryPressed,
    required VoidCallback onCancelPressed,
    required Color buttonColor,
  })
  {
    showDialog(context: context,
     builder: (_) => Column(

     ) 
     );
  }
}