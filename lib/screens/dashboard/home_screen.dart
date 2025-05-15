import 'package:finance_app/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String id = 'homeScreen';

  @override
  Widget build(BuildContext context) {
    return DecoratedContinerThree(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(children: [
              CircleAvatar(
                radius: 18,
                child: SvgPicture.asset('avatar.svg'),
              ),
              SizedBox(width:12.w,),
              Text('Hell, Chima'),
              Spacer(),
              
            ],
                    ),
          ),
        ],),);
  }
}
