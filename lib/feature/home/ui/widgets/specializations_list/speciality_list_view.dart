import 'package:flutter/material.dart';
import 'package:recommandtion_doctor/feature/home/data/models/specializations_response_model.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/specializations_list/speciality_list_view_item.dart';

class SpecialityListView extends StatelessWidget {
 final List<Specialization?>specializationDataList;
    SpecialityListView({super.key, required this.specializationDataList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
        itemCount: specializationDataList.length,
        itemBuilder:  (context,index){
return SpecialityListViewItem(itemIndex: index, specializationsData:  specializationDataList[index],);

        }
    );
  }
}