
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recommandtion_doctor/feature/onboarding/ui/widgets/doc_logo_and_name.dart';
import 'package:recommandtion_doctor/feature/onboarding/ui/widgets/doctor_image_and_text.dart';
import 'package:recommandtion_doctor/feature/onboarding/ui/widgets/get_started_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      
          child:Padding(
            padding:   EdgeInsets.only(top: 30.h,bottom: 30.h),
            child: Column(
              children: [
            DocLogoAndName(),
                DoctorImageAndText(),
      GetStartedBu()
      
      
      
              ],
      
            ),
          ),
      
      ),
    );
  }
}
