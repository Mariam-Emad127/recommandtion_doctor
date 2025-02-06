import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recommandtion_doctor/feature/home/data/models/specializations_response_model.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/list_item.dart';

import '../../../controller/cubit/home_cubit.dart';
import 'detailed_doctor/doctorInfobuilder.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorsModel;
  const DoctorsListViewItem({super.key, required this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    /*
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
         Image.network(
          "https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg",
                 height: 90.h,
                width: 90.w,
       
          ),
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorsModel?.name ?? 'Name',
                  style: TextStyles.font18DarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(5),
                Text(
                  '${doctorsModel?.degree} | ${doctorsModel?.phone}',
                  style: TextStyles.font12GrayMedium,
                ),
                verticalSpace(5),
                Text(
                  doctorsModel?.email ?? 'Email',
                  style: TextStyles.font12GrayMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  */

    return GestureDetector(
      onTap: () {
        context.read<HomeCubit>()..getDoctorInfo(doctorId: doctorsModel?.id);

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
