import 'dart:developer';
import 'package:finance_app/screens/dashboard/dashboard.dart';
import 'package:finance_app/screens/dashboard/filter_screen.dart';
import 'package:finance_app/screens/mono_screen.dart';
import 'package:finance_app/screens/mono_success_screen.dart';
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
  initialLocation: '/filterScreeen',
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
      builder: (context, state) => const SignUpScreen(),
      name: SignUpScreen.id,
    ),
    GoRoute(
      path: '/aboutYouScreen',
      builder: (context, state) => const AboutYouScreen(),
      name: AboutYouScreen.id,
    ),
    GoRoute(
      path: '/confirmationCodeScreen',
      builder: (context, state) => const ConfirmationCodeScreen(),
      name: ConfirmationCodeScreen.id,
    ),
    GoRoute(
      path: '/selfieUploadScreen',
      builder: (context, state) => const SelfieUploadScreen(),
      name: SelfieUploadScreen.id,
    ),
    GoRoute(
      path: '/idUploadScreen',
      builder: (context, state) => const IdUploadScreen(),
      name: IdUploadScreen.id,
    ),
    GoRoute(
      path: '/pinConfirmationScreen',
      builder: (context, state) => const PinConfirmationScreen(),
      name: PinConfirmationScreen.id,
    ),
    GoRoute(
      path: '/setPinScreen',
      builder: (context, state) => const SetPinScreen(),
      name: SetPinScreen.id,
    ),
    GoRoute(
      path: '/monoScreen',
      builder: (context, state) => const MonoScreen(),
      name: MonoScreen.id,
    ),
    GoRoute(
      path: '/monoSuccessScreen',
      builder: (context, state) => const MonoSuccessScreen(),
      name: MonoSuccessScreen.id,
    ),
    GoRoute(
      path: '/pinLoginScreen',
      builder: (context, state) => const PinLoginScreen(),
      name: PinLoginScreen.id,
    ),
    GoRoute(
      path: '/loginScreen',
      builder: (context, state) => LoginScreen(),
      name: LoginScreen.id,
    ),
    GoRoute(
      path: '/homeScreen',
      builder: (context, state) => HomeScreen(),
      name: HomeScreen.id,
    ),
    GoRoute(
      path: '/transactionScreen',
      builder: (context, state) => TransactionScreen(),
      name: TransactionScreen.id,
    ),
        GoRoute(
      path: '/filterScreeen',
      builder: (context, state) => FilterScreen() ,
      name: FilterScreen.id
      ),
  ],
);










    // GoRoute(
    //   path: path,
    //   builder: (context, state) => ,
    //   name: 
    //   ),
