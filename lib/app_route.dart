import 'dart:developer';
import 'package:finance_app/screens/onboard/about_you_screen.dart';
import 'package:finance_app/screens/onboard/sign_up_screen.dart';
import 'package:finance_app/screens/onboard/onboard.dart';
import 'package:finance_app/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class NavObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log('route `pushed` from $previousRoute ---> $route');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log('route `popped` from $previousRoute ---> $route');
  }
}

final router = GoRouter(
  initialLocation: '/',
  observers: [NavObserver()],

  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
      name: SplashScreen.id,
    ),
    GoRoute(
      path: '/onboardingWrapper',
      builder: (context, state) => const OnboardingWrapper(),
      name: OnboardingWrapper.id,
    ),
    GoRoute(
      path: '/signUpScreen',
      builder: (context, state) =>  SignUpScreen(),
      name: SignUpScreen.id,
    ),
    GoRoute(
      path: '/aboutYouScreen',
      builder: (context, state) => AboutYouScreen(),
      name: AboutYouScreen.id,
      )
  ],
);
