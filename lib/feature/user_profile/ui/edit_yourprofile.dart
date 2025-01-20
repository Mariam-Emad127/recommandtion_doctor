import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recommandtion_doctor/core/%20theming/colors.dart';
import 'package:recommandtion_doctor/core/%20theming/styles.dart';
import 'package:recommandtion_doctor/core/networking/api_error_handler.dart';
import 'package:recommandtion_doctor/core/widgets/app_text_button.dart';
import 'package:recommandtion_doctor/feature/sign_up/data/models/sign_up_response.dart';
import 'package:recommandtion_doctor/feature/user_profile/controller/cubit/get_userprofile_data_cubit.dart';
import 'package:recommandtion_doctor/feature/user_profile/data/models/profile_response.dart';
import 'package:recommandtion_doctor/feature/user_profile/ui/widgets/setting_appbar.dart';
import 'package:recommandtion_doctor/feature/user_profile/ui/widgets/text_editingwidget.dart';

class EditYourprofile extends StatefulWidget {
  const EditYourprofile({super.key});

  @override
  State<EditYourprofile> createState() => _EditYourprofileState();
}

class _EditYourprofileState extends State<EditYourprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child:  Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                SettingAppbar(title: "Personal information"),
                SizedBox(
                  height: 50,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset(
                      'assets/images/Image.png',
                    ),
                    Positioned(
                      top: 100,
                      left: 100,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: ColorsManager.lighterGray),
                          child: Icon(Icons.edit, color: Colors.blue)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
           BlocBuilder<GetUserprofileDataCubit, GetUserprofileDataState>(
          buildWhen: (previous, current) => current is Loading||current is Success||current is Error ,
          builder: (context, state) {
           return state.maybeWhen(  
            loading: () => SizedBox(),
            
            success:(profileResponseModel){  
               return Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextEditingwidget(
                        initialText: profileResponseModel.userData?.first.name??  "unKnowm" ,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextEditingwidget(
                        initialText:profileResponseModel.userData?.first.email?? 'email.mail.com',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextEditingwidget(
                        initialText: profileResponseModel.userData?.first.phone??'+20 128015545',
                      ),
                      Text(
                        'When you set up your personal information settings, you should take care to provide accurate information.',
                        style: TextStyle(color: ColorsManager.gray),
                      ),
                      SizedBox(
                        height: 130,
                      ),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: AppTextButton(
                              buttonText: "Save",
                              textStyle: TextStyles.font18WhiteMedium,
                              onPressed: () {}))
                    ],
                  ),
                );
           
        } ,
            
           error: (error) {
             return Text(error.toString());
           }, 
          
            orElse:(){ return   Text("nnnnnnnnnnnnnnnnn" );});
        /*
            return Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                SettingAppbar(title: "Personal information"),
                SizedBox(
                  height: 50,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset(
                      'assets/images/Image.png',
                    ),
                    Positioned(
                      top: 100,
                      left: 100,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: ColorsManager.lighterGray),
                          child: Icon(Icons.edit, color: Colors.blue)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextEditingwidget(
                        initialText: 'User Name',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextEditingwidget(
                        initialText: 'email.mail.com',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextEditingwidget(
                        initialText: '+20 128015545',
                      ),
                      Text(
                        'When you set up your personal information settings, you should take care to provide accurate information.',
                        style: TextStyle(color: ColorsManager.gray),
                      ),
                      SizedBox(
                        height: 130,
                      ),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: AppTextButton(
                              buttonText: "Save",
                              textStyle: TextStyles.font18WhiteMedium,
                              onPressed: () {}))
                    ],
                  ),
                ),
              ],
            );
        
        */
          },
        ),
     ] )
      ),
      )
    );
  }
}
