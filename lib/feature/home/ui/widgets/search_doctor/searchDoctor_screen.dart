import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recommandtion_doctor/feature/home/controller/cubit/getdoctors_cubit.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/recommendd_appbar.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/search_doctor/RecomendenListView.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/search_doctor/custom_search_doctor_name.dart';

class SearchdoctorScreen extends StatefulWidget {
  final int? id;
  SearchdoctorScreen({
    super.key,
    this.id,
  });

  @override
  State<SearchdoctorScreen> createState() => _SearchdoctorScreenState();
}

class _SearchdoctorScreenState extends State<SearchdoctorScreen> {
  @override
  void initState() {
     super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              RecommenddAppbar(title: "Recommendation Doctor"),
              CustomSearchTextField(
                onChanged: (String val) {
                  context.read<GetdoctorsCubit>()..getserchaDoctors(val);
                },
              ),
              Expanded(
                child: BlocBuilder<GetdoctorsCubit, GetdoctorsState>(
                  builder: (context, state) {
                    return state.maybeWhen(doctorsLoading: () {
                      return Center(child: CircularProgressIndicator());
                    }, doctorsSuccess: (doctorList) {
                      return Recomendenlistview(
                        doctor: doctorList,
                      );
                    }, doctorsError: (ApiErrorModel) {
                      return Text(ApiErrorModel.message.toString());
                    }, orElse: () {
                      return Text("Error");
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
