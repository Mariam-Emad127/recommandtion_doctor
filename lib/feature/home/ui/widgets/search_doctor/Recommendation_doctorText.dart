import 'package:flutter/material.dart';
import 'package:recommandtion_doctor/core/helper/extensions.dart'; 
import '../../../../../core/ theming/styles.dart';
import '../../../../../core/routing/routes.dart';
 

class RecommendationDoctorText extends StatelessWidget {
  const RecommendationDoctorText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Recommendation Doctor",style: TextStyles.font20BlueSemiBold  ,),
              GestureDetector(
                onTap: (){
                
                  context.pushNamed(Routes.searchdoctorScreen);
                },
                child: Text( "See All",style: TextStyles.font12BlueRegular))
            ],
          );
  }
}