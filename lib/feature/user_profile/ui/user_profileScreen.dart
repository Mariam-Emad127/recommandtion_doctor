import 'package:flutter/material.dart';
 import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recommandtion_doctor/core/%20theming/colors.dart';
import 'package:recommandtion_doctor/core/helper/extensions.dart';
import 'package:recommandtion_doctor/core/routing/routes.dart';
 import 'package:recommandtion_doctor/feature/user_profile/ui/widgets/app_bar.dart';
import 'package:recommandtion_doctor/feature/user_profile/ui/widgets/appointment_button.dart';
import 'package:recommandtion_doctor/feature/user_profile/ui/widgets/cards_info.dart';
import 'package:recommandtion_doctor/feature/user_profile/ui/widgets/name_emailText.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProfilescreen extends StatefulWidget {
  const UserProfilescreen({super.key});

  @override
  State<UserProfilescreen> createState() => _UserProfilescreenState();
}

class _UserProfilescreenState extends State<UserProfilescreen> {
    String userName = "Loading...";
     String email = "Loading...";
  @override
  void initState() {
   loaddata();
    super.initState();
  }
Future <void>loaddata()async{
 final prefs1 = await SharedPreferences.getInstance();
    setState(() {
      userName = prefs1.getString("usernam") ?? "Unknown User";
      email    = prefs1.getString( "email")   ??  "Unknown User";
    });

}

  @override
  Widget build(BuildContext context) {
            //final GetUserprofileDataCubit getUserprofileDataCubit = BlocProvider.of<GetUserprofileDataCubit>(context);


    return Scaffold(
      backgroundColor: ColorsManager.mainBlue,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorsManager.mainBlue,
      ),
      body: Column(children: [
        AppBarScreen(),
        Expanded(
          child: Stack(
              clipBehavior: Clip.none, // Allows the image to overflow the stack

              children: [
                Container(
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30))),
                  height: double.infinity,
                  width: double.infinity,
                ),
                Positioned(
                  top: -70.h,
                  left: 130.h,
                  child: Image.asset(
                    'assets/images/Image.png',
                    // height: 200.h,
                  ),
                ),
                Positioned(
                  top: 25,
                  left: 237,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: ColorsManager.lighterGray),
                      child: Icon(Icons.edit, color: Colors.blue)),
                ),
           NameEmailtext(userName:userName ,email: email,),   
                Padding(
                  padding: EdgeInsets.only(top: 150, right: 10, left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppointmentButton(),
                      SizedBox(
                        height: 20.h,
                      ),
                      InkWell(
                                      onTap: (){  
                                        //context.read<GetUserprofileDataCubit>().emitGetUserProfile();
                                         context.pushNamed(Routes.EditprofileScreen);
                                       //  context.read<GetUserprofileDataCubit>().emitGetUserProfile();
                                         
                                         },

                        child: CardsInfo(
                          imagePath: 'assets/svgs/personalcard.svg',
                          title: 'Personal Information',
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CardsInfo(
                        imagePath: 'assets/svgs/directbox-notif.svg',
                        title: 'My Test & Diagnostic',
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CardsInfo(
                        imagePath: 'assets/svgs/wallet-2.svg',
                        title: 'Payment',
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ]),
    );
  }
}
