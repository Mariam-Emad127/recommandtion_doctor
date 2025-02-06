import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recommandtion_doctor/feature/home/controller/cubit/home_cubit.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/doctors_list/detailed_doctor/doctorInfobuilder.dart';

class DoctorDetailedScreen extends StatefulWidget {
    const DoctorDetailedScreen({  super.key, });

  @override
  State<DoctorDetailedScreen> createState() => _DoctorDetailedScreenState();
}

class _DoctorDetailedScreenState extends State<DoctorDetailedScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: const EdgeInsets.all(20),
          child: BlocBuilder<HomeCubit, HomeState>(
            buildWhen: (previous, current) =>
                current is OneDoctorSuccess || current is DoctorsError,
            builder: (BuildContext context, state) {
              return state.maybeWhen(onedoctorSuccess: (doctor) {
                print("Doctor Name: ${doctor?.name}"); // Debugging line

                return Doctorinfobuilder(
                  doctors: doctor,
                  id: doctor?.id,
                );
              }, doctorsError: (ErrorHandler) {
                return Text("data");
              }, orElse: () {
                return Text("ERROR");
              });
            },
          )),
    ));
  }
}
