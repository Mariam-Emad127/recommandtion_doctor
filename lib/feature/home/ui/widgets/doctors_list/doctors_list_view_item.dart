import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recommandtion_doctor/core/%20theming/styles.dart';
 import 'package:recommandtion_doctor/core/helper/spacing.dart';
import 'package:recommandtion_doctor/feature/home/data/models/specializations_response_model.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/doctors_list/doctorInfobuilder.dart';

import '../../../controller/cubit/home_cubit.dart';

 
class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorsModel;
  const DoctorsListViewItem({super.key,required this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: (){
    context.read<HomeCubit>().getDoctorInfo(doctorId: doctorsModel?.id);
        //context.pushNamed( Routes.DoctorDetailedScreen);
        Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => Doctorinfobuilder(  id: doctorsModel?.id, doctors: doctorsModel,  ))
    );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16.h),
        child: Row(
          children: [
           Image.network(
                  "https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050",
                  height: 80.h,
                  width: 80.w,
         
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
      ),
    );
  }
}