import 'package:flutter/material.dart';
import 'package:recommandtion_doctor/feature/Book%20Appointment/ui/widget/buildStepCircle.dart';
import 'package:recommandtion_doctor/feature/Book%20Appointment/ui/widget/buildStepLine.dart';

class ListStepCircle extends StatelessWidget {
  final Color backgroundColorDate_Time;
  final Color? backgroundColorPayment;
  final Color? backgroundColorSummary;
  const ListStepCircle({super.key, required this.backgroundColorDate_Time, required this.backgroundColorPayment, required this.backgroundColorSummary});

  @override
  Widget build(BuildContext context) {
    return      Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Buildstepcircle(
                          step: 0,
                          number: "1",
                          label: "Date & Time",
                          backgroundColor: backgroundColorDate_Time),
                      Buildstepline(),
                      Buildstepcircle(
                          step: 1,
                          number: "2",
                          label: "Payment",
                          backgroundColor: backgroundColorPayment),
                      Buildstepline(),
                      Buildstepcircle(
                        step: 2,
                        number: "3",
                        label: "Summary",
                        backgroundColor: backgroundColorSummary,
                      ),
                    ],
                  ),
                ) ;
  }
}