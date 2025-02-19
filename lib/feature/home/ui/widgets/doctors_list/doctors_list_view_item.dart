import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recommandtion_doctor/core/helper/shared_pref_helper.dart';
import 'package:recommandtion_doctor/feature/home/data/models/specializations_response_model.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/list_item.dart';

import '../../../controller/cubit/home_cubit.dart';
import 'detailed_doctor/doctorInfobuilder.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorsModel;
  const DoctorsListViewItem({super.key, required this.doctorsModel});

  @override
  Widget build(BuildContext context) {
   
    return GestureDetector(
      onTap: () {
        context.read<HomeCubit>()..getDoctorInfo(doctorId: doctorsModel?.id);
SharedPrefHelper.setData( "id", doctorsModel?.id);
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Doctorinfobuilder(
                    id: doctorsModel?.id,
                    
                    doctors: doctorsModel,
                  )),
        );
      },
      child: ListItemWidget(
          emai: doctorsModel?.email,
          phone: doctorsModel?.phone,
          name: doctorsModel?.name,
          gender: doctorsModel?.gender,
          degree: doctorsModel?.degree),
    );
  }
}
