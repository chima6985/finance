
import 'package:finance_app/components/decorated_container_two.dart';
import 'package:flutter/material.dart';

class MonoScreen extends StatelessWidget {
  const MonoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedContainerTwo(
        child:
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children:[
              
            ],
          ),
        ) 
        
        ),
    );
  }
}