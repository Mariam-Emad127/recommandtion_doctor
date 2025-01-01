import 'package:flutter/material.dart';
import 'package:recommandtion_doctor/core/helper/extensions.dart';

import '../../../../core/ theming/colors.dart';
import '../../../../core/ theming/styles.dart';
import '../../../../core/routing/routes.dart';

class   GetStartedBu extends StatelessWidget {
  const   GetStartedBu({super.key});

  @override
  Widget build(BuildContext context) {
    return   TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ColorsManager.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(
          const Size(double.infinity, 52),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: Text(
        'Get Started',
        style: TextStyles.font16WhiteMedium,
      ),


    );
  }
}


