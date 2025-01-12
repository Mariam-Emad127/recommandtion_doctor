import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recommandtion_doctor/feature/home/controller/cubit/home_cubit.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/doctors_list/doctors_list_view.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/specializations_list/speciality_list_view.dart';

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
  specializationsLoading: () => CircularProgressIndicator(),
  
  specializationsSuccess: (specializationsresponsemodel) {
    var specializationList=specializationsresponsemodel.specialization;
return Expanded(
  child: Column(children: [
  
  
    SizedBox(
      height: 100,
      child: SpecialityListView(  specializationDataList: specializationList ??[] )),
  
  DoctorsListView(doctorsList: specializationList![1]?.doctors,)
  
  ],),
);



  },specializationsError: (ErrorHandler){
    return SizedBox.shrink();
  },
  orElse:(){ return   SizedBox.shrink();});


  });


  }
}