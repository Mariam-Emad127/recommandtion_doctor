 
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recommandtion_doctor/core/%20theming/colors.dart';
import 'package:recommandtion_doctor/feature/Book%20Appointment/ui/widget/list_step_circle.dart';

import '../../home/ui/widgets/recommendd_appbar.dart';

class BookApointmentSummary extends StatelessWidget {
  const BookApointmentSummary({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        //padding: EdgeInsets.only(top: 25,right: 8,left: 8),
        child: Padding(

                  padding: EdgeInsets.only(top: 35.h,right: 10.h,left: 10.h),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                        RecommenddAppbar( title: 'BookApointmentSummary',),
          ListStepCircle(backgroundColorDate_Time: ColorsManager.green, backgroundColorPayment:
           ColorsManager.green, backgroundColorSummary: Colors.grey[300],),
            Text("Booking Information",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
              buildInfoCard(
                imagePath: "assets/images/Icon2.png",
                title: "Date & Time",
                subtitle: "Wednesday, 08 May 2023\n08:30 AM",
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
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              doctorInfoCard(),
          
              SizedBox(height: 16),
          
              // Payment Information
              Text("Payment Information",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              paymentInfoCard(),
          
              SizedBox(height: 16),
          
              // Payment Summary
              paymentSummary(),
          
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
                child: Text("Book Now", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfoCard(
      {required String imagePath,
      required String title,
      required String subtitle}) {
    return SizedBox(
      child: ListTile(
        leading:Image.asset( imagePath),
        // Icon(icon, color: Colors.blue, size: 30),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle, style: TextStyle(color: Colors.grey[700])),
      ),
    );
  }

  Widget doctorInfoCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset("assets/images/Icon2.png", width: 50, height: 50),
        ),
        title: Text("Dr. Randy Wigham",
            style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("General | RSUD Gatot Subroto",
                style: TextStyle(color: Colors.grey[700])),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 16),
                Text(" 4.8 (4,279 reviews)", style: TextStyle(fontSize: 12)),
              ],
            ),
          ],
        ),
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

  Widget paymentSummary() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            summaryRow("Subtotal", "\$4694"),
            summaryRow("Tax", "\$250"),
            Divider(),
            summaryRow("Payment Total", "\$4944", isBold: true),
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
