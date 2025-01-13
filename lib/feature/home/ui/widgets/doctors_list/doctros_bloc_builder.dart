import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recommandtion_doctor/feature/home/controller/cubit/home_cubit.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/doctors_list/doctors_list_view.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorsSuccess || current is DoctorsError,
      builder: (context, state) {
        return state.maybeWhen(
          doctorsSuccess: (doctors ) {
            return DoctorsListView(
              doctorsList: doctors,
            );
          },
          doctorsError: (errorHandler) => SizedBox.shrink(),
          
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
