import 'package:flutter/material.dart';
import 'package:recommandtion_doctor/core/routing/routes.dart';
import 'package:recommandtion_doctor/feature/home/ui/home_screen.dart';
import 'package:recommandtion_doctor/feature/onboarding/ui/onboarding_screen.dart';

import '../../feature/login/ui/login_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    final argumemt=settings.arguments;
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) =>LoginScreen());

      case Routes.onBoardingScreen:
        return MaterialPageRoute(
    builder: (_) =>OnboardingScreen());
       case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (_) =>HomeScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );

    }
  }
}