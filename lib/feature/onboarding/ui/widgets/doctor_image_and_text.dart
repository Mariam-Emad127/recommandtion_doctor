import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recommandtion_doctor/core/%20theming/styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //assets\svgs\Docdoc.svg
       // assets\svgs\Docdoc.svg
        SvgPicture.asset("assets/svgs/Docdoc.svg"),
Container(
  foregroundDecoration: BoxDecoration(
    
    gradient: LinearGradient(colors:[Colors.white,Colors.white.withOpacity(0.0)],begin: Alignment.bottomCenter,
    end: Alignment.topCenter
    ),


  ),

  child: Image.asset('assets/images/onboarding_doctor.png'),

),
    Positioned(
    bottom: 30,
    left: 0,
    right: 0,
    child: Text(
    'Best Doctor\nAppointment App',
    textAlign: TextAlign.center,
    style: TextStyles.font32BlueBold.copyWith(
    height: 1.4,
    ),
    ),
    )

      ],


    );
  }
}
