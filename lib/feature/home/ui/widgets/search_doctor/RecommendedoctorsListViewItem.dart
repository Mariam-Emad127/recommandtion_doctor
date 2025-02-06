import 'package:flutter/material.dart';
import 'package:recommandtion_doctor/feature/home/data/models/doctor_response.dart';
 import 'package:recommandtion_doctor/feature/home/ui/widgets/list_item.dart';

 

 

class Recommendedoctorslistviewitem extends StatelessWidget {
 final AllDoctorsModel? doctors ;
  const Recommendedoctorslistviewitem({super.key, required this.doctors});

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
                  doctors?.name ?? 'Name',
                  style: TextStyles.font18DarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(5),
                Text(
                  '${doctors?.degree} | ${doctors?.phone}',
                  style: TextStyles.font12GrayMedium,
                ),
                verticalSpace(5),
                Text(
                  doctors?.email ?? 'Email',
                  style: TextStyles.font12GrayMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  
 */
 
 return ListItemWidget(emai: doctors?.email, phone:  doctors?.phone, name:  doctors?.name,
  gender:  doctors?.gender, degree:  doctors?.degree);
  }
}