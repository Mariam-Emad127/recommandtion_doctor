import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recommandtion_doctor/feature/home/controller/cubit/home_cubit.dart';
import 'package:recommandtion_doctor/feature/home/data/models/specializations_response_model.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/specializations_list/speciality_list_view_item.dart';

class SpecialityListView extends StatefulWidget {
  final List<Specialization?> specializationDataList;
  const SpecialityListView({super.key, required this.specializationDataList});

  @override
  State<SpecialityListView> createState() => _SpecialityListViewState();
}

class _SpecialityListViewState extends State<SpecialityListView> {
  var selectedspecilazation = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.specializationDataList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                setState(() {
                  selectedspecilazation = index;
                });

               context.read<HomeCubit>().getDoctorsList( specializationId: widget.specializationDataList[index]?.id);
              },
              child: SpecialityListViewItem(
                  itemIndex: index,
                  specializationsData: widget.specializationDataList[index],
                  selectedIndex: selectedspecilazation));
        });
  }
}
