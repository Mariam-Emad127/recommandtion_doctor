import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
GlobalKey globalKey=GlobalKey();
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Form(
      key:globalKey  ,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Email',       validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid password';
            }
          },

          ),
          verticalSpace(18),
          AppTextFormField(
         //   controller: context.read<LoginCubit>().passwordController,
            hintText: 'Password',
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
          ),
          verticalSpace(24),
          // PasswordValidations(
          //   hasLowerCase: hasLowercase,
          //   hasUpperCase: hasUppercase,
          //   hasSpecialCharacters: hasSpecialCharacters,
          //   hasNumber: hasNumber,
          //   hasMinLength: hasMinLength,
          // ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}