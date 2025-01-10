import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recommandtion_doctor/core/helper/spacing.dart';
import 'package:recommandtion_doctor/feature/home/controller/cubit/home_cubit.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/doctors_blue_container.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/doctors_list/doctors_list_view.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/home_top_bar.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/specializations_list/speciality_list_view.dart';
 
class HomeScreen extends StatelessWidget {
  //List<Doctors>doctors_list;
  const  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
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
            HomeTopBar(),
            DoctorsBlueContainer(),
verticalSpace(10),
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


  }),

          ],
        ),



        )


        )


    );
  }
}
