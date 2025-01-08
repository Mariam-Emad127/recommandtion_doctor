import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recommandtion_doctor/feature/login/controller/cubit/login_cubit.dart';

 import '../../../../core/helper/app_regex.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;


 late TextEditingController password ;

  @override
  void initState() {
    super.initState();
password =context.read<LoginCubit>().password ;

  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key:context.read<LoginCubit>().formKey  ,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Email',
          controller: context.read<LoginCubit>().email,

          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid password';
            }

          },

          ),
          verticalSpace(18),
          AppTextFormField(
            hintText: 'Password',
            controller: context.read<LoginCubit>().password,

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

        ],
      ),
    );
  }

  @override
  void dispose() {
    password.dispose();
    super.dispose();
  }
}