import 'package:finance_app/components/decorated_container.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

class OnboardScreenOne extends StatelessWidget {
  const OnboardScreenOne({super.key});

  static const String id = 'onboardScreenOne';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: DecoratedContainer(child:
      Column(
        children: [
          TextButton(onPressed: (){
            
          },
          
           child:
           Text('Skip',
            style: context.textTheme.displayLarge)
            )
        ],
      )
      ,)
    );
  }
}