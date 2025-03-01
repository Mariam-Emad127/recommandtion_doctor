import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import '../../../../core/ theming/styles.dart';
import '../../../../core/helper/spacing.dart';

 
class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
 
 
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
              width: double.infinity,
              height: 175.h,
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 16.h,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  image: DecorationImage(
                      image:
                          AssetImage("assets/images/home_blue_pattern.png"))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Book and\nschedule with\nnearest doctor",
                    style: TextStyles.font18WhiteMedium,
                    textAlign: TextAlign.start,
                  ),
                  verticalSpace(16),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0.h),
                        ),
                      ),
                      child: Text(
                        'Find Nearby',
                        style: TextStyles.font12BlueRegular,
                      ),
                    ),
                  ),
                ],
              )),
        Positioned(
          right: 9.h,
          top: 0.h,
           child:Image.asset(
    'assets/images/omar.png',
      height: 200.h,
    ),)
        
        
        ],
      ),
 
    );
  }
}
