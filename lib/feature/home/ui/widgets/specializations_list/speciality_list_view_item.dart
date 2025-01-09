import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/ theming/colors.dart';
import '../../../../../core/helper/spacing.dart';

class SpecialityListViewItem extends StatelessWidget {
  const SpecialityListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder:  (context,index){

      return Padding(
        padding: EdgeInsetsDirectional.only(
            start: index == 0 ? 0 : 24.w),
        child: Column(
          children: [
            //index == selectedIndex
        //        ?
        // Container(
        //       decoration: BoxDecoration(
        //         border: Border.all(
        //           color: ColorsManager.darkBlue,
        //         ),
        //         shape: BoxShape.circle,
        //       ),
        //       child: CircleAvatar(
        //         radius: 28,
        //         backgroundColor: ColorsManager.lightBlue,
        //         child: SvgPicture.asset(
        //           'assets/svgs/general_speciality.svg',
        //           height: 42.h,
        //           width: 42.w,
        //         ),
        //       ),
        //     ),
        //        :
        CircleAvatar(
              radius: 28,
              backgroundColor: ColorsManager.lightBlue,
              child: SvgPicture.asset(
                'assets/svgs/general_speciality.svg',
                height: 40.h,
                width: 40.w,
              ),
            ),
            verticalSpace(8),
            Text("Specialization"
              // specializationsData?.name ?? 'Specialization',
              // style: itemIndex == selectedIndex
              //     ? TextStyles.font14DarkBlueBold
              //     : TextStyles.font12DarkBlueRegular,
            ),
          ],
        ),
      );

    });
  }
}
