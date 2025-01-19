import 'package:flutter/material.dart';
import 'package:recommandtion_doctor/core/%20theming/styles.dart';

class SettingAppbar extends StatelessWidget {
   // final IconData iconData; 
    final String title;
  const SettingAppbar({super.key,   required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
                 children: [
                  const Icon(
                    Icons.arrow_back_ios_new_sharp,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 130,
                  ),
                  Text(
                   title,
                    style: TextStyles.font18DarkBlueBold,
                  ),
                ],
              );
             
           
  }
}