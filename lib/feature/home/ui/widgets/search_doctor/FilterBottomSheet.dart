import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recommandtion_doctor/core/%20theming/colors.dart';
import 'package:recommandtion_doctor/core/di/dependency_injection.dart';
import 'package:recommandtion_doctor/feature/home/controller/cubit/home_cubit.dart';
import 'package:recommandtion_doctor/feature/home/data/models/doctor_response.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  List<Specialization?>? specialization;
  String selectedSpeciality = "All";
  int selectedRating = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(getIt())..getSpecializations(),
      
      child: Container(
        height: 500,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Sort By",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Align(alignment: Alignment.centerLeft, child: Text("Speciality")),
            SizedBox(
                height: 100,
                child: BlocBuilder<HomeCubit, HomeState>(
                   buildWhen: (previous, current) =>
          current is SpecializationsSuccess || current is SpecializationsError,
                  builder: (context, state) {
                    return state.maybeWhen(
      specializationsSuccess: (specialization){  
  return ListView.builder(
                        //shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: specialization?.length,
                        itemBuilder: (contex, index) {
                          return ChoiceChip(
                            label: Text('${specialization?[index]?.name }'),
                            selected: selectedSpeciality == index,
                            onSelected: (sel) {
                              setState(() {
                                selectedRating = index;
                              });
                            },
                          );
                        });}, orElse: () {return Text("llllllllllllllll");  }
                      
                    );
                  
                  },
                )),
     
            SizedBox(height: 20),
            Align(alignment: Alignment.centerLeft, child: Text("Rating")),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [0, 1, 2, 3, 4, 5]
                  .map((e) => ChoiceChip(
                        label: Text(e == 0 ? "All" : "$e ★"),
                        selected: selectedRating == e,
                        onSelected: (selected) {
                          setState(() {
                            selectedRating = e;
                          });
                        },
                      ))
                  .toList(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
            // context.read<HomeCubit>()..getDoctorsList(specializationId: 5);

                Navigator.pop(context);
              },
              child: Text("Done"),
              style: ElevatedButton.styleFrom(
             backgroundColor: ColorsManager.mainBlue,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
