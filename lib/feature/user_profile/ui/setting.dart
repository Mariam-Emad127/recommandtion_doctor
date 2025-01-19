import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recommandtion_doctor/core/%20theming/styles.dart';
import 'package:recommandtion_doctor/feature/user_profile/ui/widgets/setting_appbar.dart';

class SettindScreen extends StatelessWidget {
  const SettindScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(children: [
         SettingAppbar(title:  "Setting"), 
         SizedBox(
                height: 50.h,
              ),
              icon_setting(Icons.notifications, "Notification"),
              SizedBox(
                height: 30.h,
              ),
              icon_setting(Icons.security, "Security"),
              SizedBox(
                height: 30.h,
              ),
              icon_setting(Icons.language, "Language"),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.logout,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        "LogOut",
                        style: TextStyles.font13DarkBRedRegular,
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_back_ios_new_sharp,
                    color: Colors.black,
                  ),
                ],
              )
            ])),
      ),
    );
  }

  Row icon_setting(IconData icon, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: Colors.black,
            ),
            SizedBox(
              width: 15.w,
            ),
            Text(
              text,
              style: TextStyles.font13DarkBlueRegular,
            ),
          ],
        ),
         Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.black,
        ),
      ],
    );
  }
}
