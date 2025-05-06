import 'dart:developer';
import 'package:finance_app/screens/onboard/onboard_screen_one.dart';
import 'package:finance_app/screens/onboard/onboard_screen_two.dart';
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
      name: OnboardScreenOne.id,
      path: '/onboardScreenOne',
      builder: (context, state) => const OnboardScreenOne(),
    ),
    GoRoute(
      name: OnboardScreenTwo.id,
      path:'/onboardScreenTwo',
      builder: (context, state) => const OnboardScreenTwo(),
       )
  ],
);
