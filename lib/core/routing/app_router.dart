import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recommandtion_doctor/core/di/dependency_injection.dart';
import 'package:recommandtion_doctor/core/routing/routes.dart';
import 'package:recommandtion_doctor/feature/home/ui/home_screen.dart';
import 'package:recommandtion_doctor/feature/login/controller/cubit/login_cubit.dart';
import 'package:recommandtion_doctor/feature/onboarding/ui/onboarding_screen.dart';
import 'package:recommandtion_doctor/feature/sign_up/logic/sign_up_cubit.dart';
import 'package:recommandtion_doctor/feature/sign_up/ui/sign_up_screen.dart';

import '../../feature/login/ui/login_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    final argumemt=settings.arguments;
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider<LoginCubit>(
              create: (context) => getIt <LoginCubit>(),
              child: LoginScreen(),
            ));

      case Routes.onBoardingScreen:
        return MaterialPageRoute(
    builder: (_) =>OnboardingScreen());
       case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (_) =>HomeScreen());
      case Routes.signUpScreen:
        return MaterialPageRoute(builder:  (_)=>BlocProvider<SignupCubit>(
            create: (BuildContext context) =>getIt<SignupCubit>(),
            child: SignupScreen()));
        
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );

    }
  }
}