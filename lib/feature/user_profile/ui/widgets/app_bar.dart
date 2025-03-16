import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recommandtion_doctor/core/%20theming/styles.dart';
import 'package:recommandtion_doctor/core/helper/extensions.dart';
import 'package:recommandtion_doctor/core/routing/routes.dart';
import 'package:recommandtion_doctor/feature/user_profile/controller/cubit/get_userprofile_data_cubit.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return        
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          height: 150.h,
          child: 
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
               icon: Icon(  Icons.arrow_back_ios_new_sharp),
                color: Colors.white, onPressed: () {context.pop();  },
              ),
              Text(
                "Profile",
                style: TextStyles.font25WhiteMedium,
              ),
              IconButton(icon:Icon(  Icons.settings , color: Colors.white ,),onPressed: (){
                  //context.read<GetUserprofileDataCubit>().emitGetUserProfile();
context.pushNamed(Routes.settingSreen);

              },),
            ],
          ),
      
        );
       
  }
}