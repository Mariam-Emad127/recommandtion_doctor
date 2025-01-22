import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/ theming/styles.dart';

class CardsInfo extends StatelessWidget {
final String imagePath;
final String title;
  const CardsInfo(  {super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: 355,
         child: Row(children: [
         SvgPicture.asset(imagePath),
         const SizedBox(width: 15,),
         Text( title,style: TextStyles.font14DarkBlueMedium ,)
         
         ],),
       );
       
        
  }
}