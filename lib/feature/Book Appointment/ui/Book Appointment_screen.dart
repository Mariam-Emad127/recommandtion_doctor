import 'package:flutter/material.dart';
import 'package:recommandtion_doctor/core/helper/extensions.dart';
import 'package:recommandtion_doctor/feature/Book%20Appointment/ui/widget/RadioMenuButtonwidget.dart';
import 'package:recommandtion_doctor/feature/Book%20Appointment/ui/widget/list_avalible_time.dart';
import 'package:recommandtion_doctor/feature/Book%20Appointment/ui/widget/list_step_circle.dart';
import 'package:recommandtion_doctor/feature/Book%20Appointment/ui/widget/selectdate.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/recommendd_appbar.dart';
import '../../../core/ theming/styles.dart';
import '../../../core/routing/routes.dart';
import '../../../core/widgets/app_text_button.dart';

class BookappointmentScreen extends StatefulWidget {
  const BookappointmentScreen({super.key});

  @override
  State<BookappointmentScreen> createState() => _BookappointmentScreen();
}

class _BookappointmentScreen extends State<BookappointmentScreen> {
  int _selectedValue = 1;
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RecommenddAppbar(title: "Bookappointment"),
                // Stepper progress

                ListStepCircle(backgroundColorDate_Time: Colors.blue, backgroundColorPayment: Colors.grey[300], backgroundColorSummary: Colors.grey[300],),
                const SizedBox(height: 15),
                // Select Date Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Select Date",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Set Manual",
                          style: TextStyle(color: Colors.blue)),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                // Date Picker List
                Selectdate(),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Available time",
                    style: TextStyles.font18DarkBlueBold,
                  ),
                ),

                ListAvalibleTime(),

                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Appointment Type",
                    style: TextStyles.font18DarkBlueBold,
                  ),
                ),

                SizedBox(
                  height: 170,
                  child: ListView(children: [
                    Radiomenubuttonwidget(
                      title: "In Person",
                      imagePath: "assets/images/calendar-2@2x.png",
                      val: 1,
                      groupValue: _selectedValue,
                      onChanged: (int value) {
                        setState(() {
                          _selectedValue = value;
                        });
                      },
                    ),
                    Radiomenubuttonwidget(
                      title: "Video Call",
                      imagePath: "assets/images/calendar-2.png",
                      val: 2,
                      groupValue: _selectedValue,
                      onChanged: (int value) {
                        setState(() {
                          _selectedValue = value;
                        });
                      },
                    ),
                    Radiomenubuttonwidget(
                      title: "Phone Call",
                      imagePath: "assets/images/phone-2.png",
                      val: 3,
                      groupValue: _selectedValue,
                      onChanged: (int value) {
                        setState(() {
                          _selectedValue = value;
                        });
                      },
                    ),
                  ]),
                ),

                AppTextButton(
                  buttonText: 'Continue',
                  textStyle: TextStyles.font16WhiteSemiBold,
                  onPressed: () {context.pushNamed(Routes.paymentScreen);},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
