import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recommandtion_doctor/core/helper/spacing.dart';
import 'package:recommandtion_doctor/feature/login/controller/cubit/login_cubit.dart';
import 'package:recommandtion_doctor/feature/login/ui/widgets/dont_have_account_text.dart';
import 'package:recommandtion_doctor/feature/login/ui/widgets/email_and_password.dart';
import 'package:recommandtion_doctor/feature/login/ui/widgets/login_bloc_listener.dart';
import 'package:recommandtion_doctor/feature/login/ui/widgets/terms_and_conditions_text.dart';

import '../../../core/ theming/styles.dart';
import '../../../core/widgets/app_text_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Text(
            'Welcome Back',
            style: TextStyles.font24BlueBold,
          ),
          verticalSpace(8),
          Text(
            'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
            style: TextStyles.font14GrayRegular,
          ),
          EmailAndPassword(),
          AppTextButton(
            buttonText: "Login",
            textStyle: TextStyles.font16WhiteSemiBold,
            onPressed: () {
              validateThenDoLogin(context);
            },
          ),
          verticalSpace(16),
          const TermsAndConditionsText(),
          const DontHaveAccountText(),
          LoginBlocListener()
        ],
      )),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
      //    LoginRequestBody(
      //  email: context.read<LoginCubit>().email.text,
      // password: context.read<LoginCubit>().password.text));
    }
  }
}
