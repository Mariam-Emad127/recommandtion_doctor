import 'package:flutter/material.dart';
import 'package:recommandtion_doctor/feature/Book%20Appointment/ui/widget/appointment_screen.dart';
 

class BookappointmentScreen extends StatefulWidget {
 

  const BookappointmentScreen({
    super.key, 
  });

  @override
  State<BookappointmentScreen> createState() => _BookappointmentScreen();
}

class _BookappointmentScreen extends State<BookappointmentScreen> {
  int _selectedValue = 1;
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
     return AppointmentBlock(  );
   
 
  }

}
