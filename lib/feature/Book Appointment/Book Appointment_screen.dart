import 'package:flutter/material.dart';
import 'package:recommandtion_doctor/core/%20theming/styles.dart';
 import 'package:recommandtion_doctor/feature/Book%20Appointment/ui/widget/RadioMenuButtonwidget.dart';
import 'package:recommandtion_doctor/feature/Book%20Appointment/ui/widget/buildStepCircle.dart';
import 'package:recommandtion_doctor/feature/Book%20Appointment/ui/widget/buildStepLine.dart';
import 'package:recommandtion_doctor/feature/Book%20Appointment/ui/widget/selectdate.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/recommendd_appbar.dart';

class BookappointmentScreen extends StatefulWidget {
  const BookappointmentScreen({super.key});

  @override
  State<BookappointmentScreen> createState() => _BookappointmentScreen();
}

class _BookappointmentScreen extends State<BookappointmentScreen> {
  int _selectedValue=1;
  bool isActive = false;
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RecommenddAppbar(title: "Bookappointment"),
              // Stepper progress
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Buildstepcircle(
                        step: 0,
                        number: "1",
                        label: "Date & Time",
                        backgroundColor: Colors.blue),
                    Buildstepline(),
                    Buildstepcircle(
                        step: 1,
                        number: "2",
                        label: "Payment",
                        backgroundColor: Colors.grey[300]),
                    Buildstepline(),
                    Buildstepcircle(
                      step: 2,
                      number: "3",
                      label: "Summary",
                      backgroundColor: Colors.grey[300],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              // Select Date Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Select Date",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
            height: 250,
             child: ListView(
              children: [
            Radiomenubuttonwidget(title: "In Person", imagePath:  "assets/images/calendar-2@2x.png",val: 1,
             groupValue: _selectedValue, onChanged: (int value) { setState(() {
              _selectedValue=value;
            }); },),
             Radiomenubuttonwidget(title: "Video Call", imagePath:  "assets/images/calendar-2.png",val: 2, groupValue: _selectedValue, onChanged: (int value) { setState(() {
              _selectedValue=value;
            }); },),  
             Radiomenubuttonwidget(title: "Phone Call", imagePath:  "assets/images/phone-2.png",val: 3, groupValue: _selectedValue, onChanged: (int value) { setState(() {
              _selectedValue=value;
            }); },),
               
 
               ] ),
           )
            ],
          ),
        ),
      ),
    );
  }
}
