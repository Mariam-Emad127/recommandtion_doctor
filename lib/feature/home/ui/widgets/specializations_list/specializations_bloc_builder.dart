import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recommandtion_doctor/feature/home/controller/cubit/home_cubit.dart';
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