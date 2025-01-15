import 'package:flutter/material.dart';
 import 'package:recommandtion_doctor/core/helper/spacing.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/doctors_blue_container.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/doctors_list/doctros_bloc_builder.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/home_top_bar.dart';
 import 'package:recommandtion_doctor/feature/home/ui/widgets/specializations_list/specializations_bloc_builder.dart';
 
 
class HomeScreen extends StatelessWidget {
 
  const HomeScreen(  {super.key,   });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(
        20.0,
        16.0,
        20.0,
        28.0,
      ),
      child: Column(
        children: [
          HomeTopBar( ),
          DoctorsBlueContainer(),
          verticalSpace(10),
          SpecializationsBlocBuilder(),
          verticalSpace(8),
          const DoctorsBlocBuilder(),
          // DoctorsBlocBuilder(),
        ],
      ),
    )));
  }
}
