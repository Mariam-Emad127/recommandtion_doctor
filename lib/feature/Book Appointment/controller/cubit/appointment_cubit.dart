import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recommandtion_doctor/feature/Book%20Appointment/data/models/appointment_request_body.dart';
import 'package:recommandtion_doctor/feature/Book%20Appointment/data/models/appointment_response_body.dart';
import 'package:recommandtion_doctor/feature/Book%20Appointment/data/repo/appointment_repo.dart';

import '../../../../core/helper/shared_pref_helper.dart';

part 'appointment_state.dart';
part 'appointment_cubit.freezed.dart';

class AppointmentCubit extends Cubit<AppointmentState> {
  AppointmentCubit(this.appointmentRepo) : super(AppointmentState.initial());
  AppointmentRepo appointmentRepo;
  AppointmentResponseBody? appointmentResponseBody;


     int id=1;
   String date_time="mmmmm";

_loadedvalue()async{
date_time=await SharedPrefHelper.getString( "date&time");
id=await SharedPrefHelper.getInt( "id");
}
 
Future<void> emitAppointmentStates(
    )async{ 
  emit(AppointmentState.loading());
await _loadedvalue();

  final response = await appointmentRepo.appointmentRepo(AppointmentRequestBody(
    doctor_id:id,
 
    start_time: date_time));
 

response.when(success:(appointmentResponseBody){
  emit(AppointmentState.success(appointmentResponseBody.doctorInfoCard,date_time));

}, failure: (apiErrorModel) {
      emit(AppointmentState.failure( ));
    });

}



}
 