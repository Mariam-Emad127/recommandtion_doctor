import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/ theming/styles.dart';
import '../../../../core/helper/spacing.dart';

class ListItemWidget extends StatelessWidget {
  final String ?emai;
    final String? phone;
      final String? name;
        final String? gender;
          final String? degree;
  const ListItemWidget({super.key, required this.emai, required this.phone, required this.name, required this.gender, required this.degree});

  @override
  Widget build(BuildContext context) {    return Container(
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
                 name ?? 'Name',
                  style: TextStyles.font18DarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(5),
                Text(
                  '${degree} | ${phone}',
                  style: TextStyles.font12GrayMedium,
                ),
                verticalSpace(5),
                Text(
                  emai ?? 'Email',
                  style: TextStyles.font12GrayMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  
  }
}