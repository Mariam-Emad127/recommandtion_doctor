import 'package:flutter/material.dart';
import 'package:recommandtion_doctor/core/%20theming/styles.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/doctors_list/doctorCard.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/recommendd_appbar.dart';
import '../../../../../../core/widgets/app_text_button.dart';
import '../../../../data/models/specializations_response_model.dart';

class Doctorinfobuilder extends StatefulWidget {
   final int ?id;
  final Doctors ?doctors ;
    Doctorinfobuilder(  {super.key,  required  this.doctors,required this.id });

  @override
  State<Doctorinfobuilder> createState() => _DoctorinfobuilderState();
}

class _DoctorinfobuilderState extends State<Doctorinfobuilder>with SingleTickerProviderStateMixin {
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
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        RecommenddAppbar(title:widget.doctors?.name??""),
                        SizedBox(
                          height: 10,
                        ),
                        Doctorcard(name: '${widget.doctors?.name}',
                         specialization:  '${widget.doctors?.description }',
                          degree:  '${widget.doctors?.name}',),
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
                                    "Dr. ${widget.doctors?.name}   is the top most  ${widget.doctors?.degree}  in Christ Hospital at ${widget.doctors?.address} .achived several awards for her wonderful contribution in medical field. She is available for private consultation.",
                                    style: TextStyles.font12GrayRegular,
                                  ),
                                  const SizedBox(height: 16),
                                  const Text(
                                    "Working Time",
                                    style: TextStyle(
                                        fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "${widget.doctors?.startTime} -  ${widget.doctors?.endTime}",
                                    style: TextStyles.font12GrayRegular,
                                  ),
                                  const SizedBox(height: 16),
                                  const Text(
                                    "STR",
                                    style: TextStyle(
                                        fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                    Text( '${widget.doctors?.phone}'),
                                  const SizedBox(height: 16),
                                    Text(
                                    "${widget.doctors?.address} ",
                                    style: TextStyle(
                                        fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                    Text( '${widget.doctors?.address}'),
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
                      ]
                      ),
                  ),
                ),
              );
       



  }
}