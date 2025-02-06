import 'package:flutter/material.dart';
import 'package:recommandtion_doctor/feature/home/data/models/doctor_response.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/search_doctor/RecommendedoctorsListViewItem.dart';

class Recomendenlistview extends StatelessWidget {
final List<AllDoctorsModel?>?doctor;
  const Recomendenlistview({super.key,required this.doctor });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: doctor?.length,
      itemBuilder:  (context,index) {
    return Recommendedoctorslistviewitem(doctors: doctor?[index]);

    });
  }
}