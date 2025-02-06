import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recommandtion_doctor/core/di/dependency_injection.dart';
import 'package:recommandtion_doctor/core/routing/routes.dart';
import 'package:recommandtion_doctor/feature/home/controller/cubit/getdoctors_cubit.dart';
import 'package:recommandtion_doctor/feature/home/controller/cubit/home_cubit.dart';
import 'package:recommandtion_doctor/feature/home/ui/home_screen.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/doctors_list/detailed_doctor/doctor_detailed_screen.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/search_doctor/searchDoctor_screen.dart';
import 'package:recommandtion_doctor/feature/login/controller/cubit/login_cubit.dart';
import 'package:recommandtion_doctor/feature/onboarding/ui/onboarding_screen.dart';
import 'package:recommandtion_doctor/feature/sign_up/logic/sign_up_cubit.dart';
import 'package:recommandtion_doctor/feature/sign_up/ui/sign_up_screen.dart';
import 'package:recommandtion_doctor/feature/user_profile/controller/cubit/get_userprofile_data_cubit.dart';
import 'package:recommandtion_doctor/feature/user_profile/ui/edit_yourprofile.dart';
import 'package:recommandtion_doctor/feature/user_profile/ui/user_profileScreen.dart';
import 'package:recommandtion_doctor/feature/user_profile/ui/setting.dart';

import '../../feature/login/ui/login_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    final argumemt = settings.arguments;
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider<LoginCubit>(
                  create: (context) => getIt<LoginCubit>(),
                  child: LoginScreen(),
                ));

      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider<HomeCubit>(
                  create: (context) =>
                      HomeCubit(getIt())..getSpecializations()),
            ],
            child: HomeScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider<SignupCubit>(
                create: (BuildContext context) => getIt<SignupCubit>(),
                child: SignupScreen()));

      case Routes.profileScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider<GetUserprofileDataCubit>(
                  create: (context) => getIt<GetUserprofileDataCubit>(),
                  child: UserProfilescreen(),
                ));

      case Routes.settingSreen:
        return MaterialPageRoute(builder: (_) => SettindScreen());
      case Routes.EditprofileScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider<GetUserprofileDataCubit>.value(
                  //  create: (context) => getIt<GetUserprofileDataCubit>(),//..emitGetUserProfile(),
                  value: getIt<GetUserprofileDataCubit>()..emitGetUserProfile(),
                  child: EditYourprofile(),
                ));
      case Routes.DoctorDetailedScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider<HomeCubit>(
                  create: (context) => HomeCubit(getIt()),
                  child: DoctorDetailedScreen(),
                ));

      case Routes.SearchdoctorScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider<GetdoctorsCubit>(
                  create: (context) =>
                      GetdoctorsCubit(getIt())..getAllDoctors(),
                  child: SearchdoctorScreen(),
                ));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
