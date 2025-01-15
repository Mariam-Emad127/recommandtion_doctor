import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recommandtion_doctor/core/%20theming/colors.dart';
 import 'package:recommandtion_doctor/core/helper/extensions.dart';
  import 'package:recommandtion_doctor/core/routing/routes.dart';
import 'package:recommandtion_doctor/feature/login/controller/cubit/login_cubit.dart';
import 'package:recommandtion_doctor/feature/login/controller/cubit/login_state.dart';
import '../../../../core/ theming/styles.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is LoginLoading ||
          current is LoginSuccess ||
          current is  LoginError,
      listener: (BuildContext context, state) {
        state.whenOrNull(
         
          loginLoading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.mainBlue,
                ),
              ),
            );
          },
         
          loginSuccess: (username) {
            print( "dddddddddddddddd$username");
  //  loginResponse 
            Navigator.pop(context);
            Navigator.pushNamed(
              context,
              Routes.homeScreen,
            );

          },
    
          loginError: (apiErrorModel) {
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(apiErrorModel.getAllerrors()),
                backgroundColor: Colors.red,
                duration: const Duration(seconds: 3),
              ),
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyles.font15DarkBlueMedium,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: TextStyles.font14BlueSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
