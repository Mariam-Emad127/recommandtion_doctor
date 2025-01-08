import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
child: Stack(
  children: [

    Container(child: Image.asset( "assets/images/home_blue_pattern.png"),),
    
    Text( "Book and\nschedule with\nnearest doctor")

  ],


),


    );
  }
}
