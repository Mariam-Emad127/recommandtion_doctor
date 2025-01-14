import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recommandtion_doctor/core/helper/spacing.dart';
import 'package:recommandtion_doctor/feature/home/controller/cubit/home_cubit.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/doctors_list/doctors_shimmer_loading.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/specializations_list/speciality_list_view.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/specializations_list/speciality_shimmer_loading.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return 
BlocBuilder<HomeCubit,HomeState>(
  buildWhen: (previous, current) =>current is SpecializationsError||
  current is SpecializationsLoading||current is SpecializationsSuccess,
  builder:  (context,state){
return state.maybeWhen(
  specializationsLoading: () =>  Expanded(
      child: Column(
        children: [
          const SpecialityShimmerLoading(),
          verticalSpace(8),
          const DoctorsShimmerLoading(),
        ],
      ),
    ),
  
  specializationsSuccess: (specializationDataList) {
    var specializationList= specializationDataList;
return SizedBox(
  height: 90,
  child: SpecialityListView(  specializationDataList: specializationList  ??[] ));



  },specializationsError: (ErrorHandler){
    return SizedBox.shrink();
  },
  orElse:(){ return   SizedBox.shrink();});


  });


  }
}