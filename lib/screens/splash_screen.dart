import 'package:finance_app/screens/onboard/onboard.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String id = 'splashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final mqr = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: mqr.width,
        height: mqr.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/jpegs/splash.png'),
            fit: BoxFit.cover,
          ),
        ),

        child: InkWell(
          onTap: () {
            context.pushNamed(OnboardingWrapper.id);
          },
          child: Image.asset('assets/images/jpegs/logo.png'),
        ),
      ),
    );
  }
}
