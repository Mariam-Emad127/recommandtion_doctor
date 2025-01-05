import 'package:flutter/material.dart';
import 'package:recommandtion_doctor/feature/login/ui/widgets/email_and_password.dart';

import '../../../core/ theming/styles.dart';
import '../../../core/widgets/app_text_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(

      body: SafeArea(child:  Column(

        children: [
          EmailAndPassword(),

          AppTextButton(
            buttonText: "Login",
            textStyle: TextStyles.font16WhiteSemiBold,
            onPressed: () {
              //validateThenDoLogin(context);
            },
          ),
        ],

      )),
    );
  }
}
