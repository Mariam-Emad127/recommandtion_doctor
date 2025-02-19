import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recommandtion_doctor/core/%20theming/colors.dart';
import 'package:recommandtion_doctor/core/helper/shared_pref_helper.dart';
import 'package:recommandtion_doctor/feature/Book%20Appointment/controller/cubit/appointment_cubit.dart';
import 'package:recommandtion_doctor/feature/Book%20Appointment/ui/widget/list_step_circle.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/doctors_list/doctorCard.dart';

import '../../home/ui/widgets/recommendd_appbar.dart';

class BookApointmentSummary extends StatefulWidget {
  const BookApointmentSummary({super.key});

  @override
  State<BookApointmentSummary> createState() => _BookApointmentSummaryState();
}

class _BookApointmentSummaryState extends State<BookApointmentSummary> {
 

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
        body:
         BlocBuilder<AppointmentCubit, AppointmentState>(
          buildWhen: (previous, current) =>
              current is Success || current is Failure|| current is Loading,
          builder: (BuildContext context, state) {
            return state.maybeWhen(
              loading: () {
              return Center(child: CircularProgressIndicator(),);
              }, 
              failure: () {
                return (Text("error"));
              },
              success: (doctorInfoCard,D_t) {
          
                return SingleChildScrollView(
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: 35.h, right: 10.h, left: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RecommenddAppbar(
                          title: 'BookApointmentSummary',
                        ),
                        ListStepCircle(
                          backgroundColorDate_Time: ColorsManager.green,
                          backgroundColorPayment: ColorsManager.green,
                          backgroundColorSummary: Colors.grey[300],
                        ),
                        Text("Booking Information",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        buildInfoCard(
                            imagePath: "assets/images/Icon2.png",
                            title: "Date & Time",
                            subtitle:D_t  
                            ),
                        SizedBox(height: 5),
                        buildInfoCard(
                          imagePath: "assets/images/Icon.png",
                          title: "Appointment Type",
                          subtitle: "In Person",
                        ),
                        SizedBox(height: 16),

                        // Doctor Information
                        Text("Doctor Information",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Doctorcard(
                          name: doctorInfoCard?.doctor?.name??"",
                          specialization: doctorInfoCard?.doctor?.specialization.toString()??"",
                          degree: doctorInfoCard?.doctor?.degree??"",
                        ),

                        SizedBox(height: 16),

                        // Payment Information
                        Text("Payment Information",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        paymentInfoCard(),

                        SizedBox(height: 16),

                        // Payment Summary
                        paymentSummary(doctorInfoCard?.appointmentPrice.toString()??"222",),

                        SizedBox(height: 20),
                        // Book Now Button
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            minimumSize: Size(double.infinity, 50),
                          ),
                          child: Text("Book Now",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                );
           
 
          
              },
              orElse: () {
                return Center(child: const Text("jjjjjjjjj"));
              },
            );
          },
      //  ),
      ),
    );
  }

  Widget buildInfoCard(
      {required String imagePath,
      required String title,
      required String subtitle}) {
    return SizedBox(
      child: ListTile(
        leading: Image.asset(imagePath),
        // Icon(icon, color: Colors.blue, size: 30),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle, style: TextStyle(color: Colors.grey[700])),
      ),
    );
  }
 
  Widget paymentInfoCard() {
    return Container(
      child: ListTile(
        leading: Image.asset("assets/images/paypal.png", width: 40, height: 40),
        title: Text("Paypal"),
        subtitle: Text("**** **** **** 37842"),
        trailing: TextButton(
          onPressed: () {},
          child: Text("Change", style: TextStyle(color: Colors.blue)),
        ),
      ),
    );
  }

  Widget paymentSummary(String Subtotal, ) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            summaryRow("Subtotal", "\$ $Subtotal"),
            //summaryRow("Tax", "\$ $Subtotal"),
            //Divider(),
             summaryRow("Payment Total", "\$$Subtotal", isBold: true),
          ],
        ),
      ),
    );
  }

  Widget summaryRow(String label, String amount, {bool isBold = false}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: TextStyle(fontWeight: isBold ? FontWeight.bold : null)),
          Text(amount,
              style: TextStyle(fontWeight: isBold ? FontWeight.bold : null)),
        ],
      ),
    );
  }
}
