import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recommandtion_doctor/feature/home/controller/cubit/home_cubit.dart';
import 'package:recommandtion_doctor/feature/login/controller/cubit/login_cubit.dart';
import 'package:recommandtion_doctor/feature/login/controller/cubit/login_state.dart';
import 'package:recommandtion_doctor/feature/login/data/models/login_request_body.dart';
import 'package:recommandtion_doctor/feature/login/data/repo/login_repo.dart';
/*
class HomeTopBarBuilder extends StatelessWidget {
  final LoginRepo loginRepo;
  const HomeTopBarBuilder({super.key, required this.loginRepo});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(loginRepo),
      child: BlocBuilder<LoginCubit, LoginState>(
        buildWhen: (previous, current) =>
            current is DataSuccess || current is DataError,
        builder: (context, state) {
          return state.maybeWhen(
            loginSuccess: (loginResponse) {
              return Text(loginResponse.loginUserData?.userName ?? "5252");
            },
            loginError: (apiErrors) => SizedBox(
              child: Text("شششششششششششششششششششششش"),
            ),
            orElse: () {
              return const SizedBox.shrink();
            },
          );
        },
      ),
    );
 
  }
}
*/