
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recommandtion_doctor/core/helper/extensions.dart';
import 'package:recommandtion_doctor/feature/home/controller/cubit/home_cubit.dart';
import 'package:recommandtion_doctor/feature/home/data/models/specializations_response_model.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/doctors_list/doctorInfobuilder.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/doctors_list/doctors_list_view_item.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/doctors_list/doctros_bloc_builder.dart';

import '../../../../../core/routing/routes.dart';
import '../doctor_detailed_screen.dart';

class DoctorsListView extends StatelessWidget {
  final List<Doctors?>? doctorsList;

    DoctorsListView({super.key,required this.doctorsList, });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList?.length,
        itemBuilder: (context, index) {
          return
           DoctorsListViewItem(
             doctorsModel: doctorsList?[index],
           );
        },
      ),
    );
  }
}