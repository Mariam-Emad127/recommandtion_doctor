import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recommandtion_doctor/core/%20theming/styles.dart';
import 'package:recommandtion_doctor/core/widgets/app_text_button.dart';
import 'package:recommandtion_doctor/feature/home/controller/cubit/home_cubit.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/doctors_list/doctorCard.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/doctors_list/doctorInfobuilder.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/doctors_list/doctros_bloc_builder.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/recommendd_appbar.dart';

class DoctorDetailedScreen extends StatefulWidget {
  //final int doctorId;
  const DoctorDetailedScreen({super.key,  });

  @override
  State<DoctorDetailedScreen> createState() => _DoctorDetailedScreenState();
  
}

class _DoctorDetailedScreenState extends State<DoctorDetailedScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        //  padding: EdgeInsets.only(right: 20, left: 20),
        padding: const EdgeInsets.all(20),
     /* 
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  RecommenddAppbar(title: "Dr. Randy Wigham"),
                  SizedBox(
                    height: 10,
                  ),
                  Doctorcard(),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: TabBar(
                        unselectedLabelColor: Colors.grey,
                        labelColor: Colors.blue,
                        tabs: const [
                          Tab(
                            text: ("About"),
                          ),
                          Tab(
                            text: ("Location"),
                          ),
                          Tab(
                            text: ("Reviews"),
                          ),
                        ],
                        controller: tabController,
                        indicatorSize: TabBarIndicatorSize.tab),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "About me",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "Dr. Jenny Watson is the top most Immunologists specialist in Christ Hospital at London. She achived several awards for her wonderful contribution in medical field. She is available for private consultation.",
                              style: TextStyles.font12GrayRegular,
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              "Working Time",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Monday - Friday, 08:00 AM - 08:00 PM",
                              style: TextStyles.font12GrayRegular,
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              "STR",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const Text("4726482464"),
                            const SizedBox(height: 16),
                            const Text(
                              "Pengalaman Praktik",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const Text("RSPAD Gatot Soebroto\n2017 - sekarang"),
                            const SizedBox(height: 20),
                          ],
                        ),
                        const Center(
                          child: Text(
                            'Screen 2',
                          ),
                        ),
                        const Center(
                          child: Text(
                            'Screen 3',
                          ),
                        ),
                      ],
                    ),
                  ),
                  AppTextButton(
                      buttonText: "Make An Appointment",
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {})
                ]);
       
       
          },
        ),
     */

    child:  BlocBuilder<HomeCubit,HomeState>(
      buildWhen: (previous, current) => current is OneDoctorSuccess||current is DoctorsError  ,
      builder: (BuildContext context, state) {
return state.maybeWhen(
onedoctorSuccess:(doctor){ 

   return Doctorinfobuilder(doctors: doctor, id: doctor?.id, );

},

doctorsError: (ErrorHandler){
  return  Text("data");
},
 orElse: () { return Text("ERROR"); }


);


        },
        
        )

      ),
    ));
  }
}
