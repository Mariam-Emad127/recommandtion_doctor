import 'package:flutter/material.dart';
import 'package:recommandtion_doctor/core/%20theming/colors.dart';
import 'package:recommandtion_doctor/feature/user_profile/ui/widgets/setting_appbar.dart';

class EditYourprofile extends StatefulWidget {
  const EditYourprofile({super.key});

  @override
  State<EditYourprofile> createState() => _EditYourprofileState();
}

class _EditYourprofileState extends State<EditYourprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SafeArea(child: Column(
 
children: [
  SizedBox(height: 30,),
SettingAppbar(title: "Personal information"),
  SizedBox(height: 50,),

Stack(
  clipBehavior: Clip.none,
children: [
      Image.asset(
        'assets/images/Image.png',
        // height: 200.h,
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
  SizedBox(height: 80,),

Container(
  alignment: Alignment.topLeft,
  padding: EdgeInsets.only(left: 15),
  child: Column(
     mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: 50,
        child: EditableText ( controller: TextEditingController(), focusNode: FocusNode(), style: TextStyle(color: Colors.black), 
        cursorColor: Colors.black, backgroundCursorColor: Colors.grey,
         //decoration: InputDecoration(
          //helperText: "UserName",focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)))  
          
          )
        ),
      SizedBox(height: 30,),
      Text( "email.mail.com"),
      SizedBox(height: 30,),
      Text( "+20 128015545"),
    ],
  ),
),

],



)),


    );
  }
}