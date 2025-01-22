import 'package:flutter/material.dart';
import 'package:recommandtion_doctor/core/%20theming/colors.dart';
import 'package:recommandtion_doctor/feature/user_profile/ui/widgets/custom_button.dart';

class AppointmentButton extends StatelessWidget {
  const AppointmentButton({super.key});

  @override
  Widget build(BuildContext context) {
    return 
           Row(
              children: [
                  Expanded(
                    child: CustomButton(
                  text: 'My Appointment',
                  backgroundColor:ColorsManager.lighterGray,
                  textColor: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                )),
                Expanded(
                    child: CustomButton(
                 // onPressed: () {  },
                  fontSize: 16,
                  text:  "Medical records",
                  backgroundColor: ColorsManager.lightGray,
                  textColor: Colors.black,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                )),
              ],
            );
     
  }
}