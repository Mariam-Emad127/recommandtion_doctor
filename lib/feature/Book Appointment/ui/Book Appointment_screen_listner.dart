import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 import 'package:recommandtion_doctor/feature/Book%20Appointment/ui/widget/appointment_screen.dart';
import '../../../core/ theming/colors.dart';
 import '../controller/cubit/appointment_cubit.dart';

class BookappointmentScreen extends StatefulWidget {
  // final int id;

  const BookappointmentScreen({
    super.key, // required this.id
  });

  @override
  State<BookappointmentScreen> createState() => _BookappointmentScreen();
}

class _BookappointmentScreen extends State<BookappointmentScreen> {
  int _selectedValue = 1;
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
     return AppointmentBlock(id: 5, );
   /*
    return BlocListener<AppointmentCubit, AppointmentState>(
      listenWhen: (previous, current) =>
          current is Success || current is Loading || current is Failure,
      listener: (context, state) {
        state.whenOrNull(loading: () {
          showDialog(
            context: context,
            builder: (context) => const Center(
              child: CircularProgressIndicator(
                color: ColorsManager.mainBlue,
              ),
            ),
          );
        }, success: (doctor) {
          return AppointmentBlock(id:  5);
        });
      },
    );
 */
  }

}
