import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recommandtion_doctor/feature/Book%20Appointment/data/models/appointment_request_body.dart';
import 'package:recommandtion_doctor/feature/Book%20Appointment/data/models/appointment_response_body.dart';
import 'package:recommandtion_doctor/feature/Book%20Appointment/data/repo/appointment_repo.dart';

part 'appointment_state.dart';
part 'appointment_cubit.freezed.dart';

class AppointmentCubit extends Cubit<AppointmentState> {
  AppointmentCubit(this.appointmentRepo) : super(AppointmentState.initial());
  AppointmentRepo appointmentRepo;
  AppointmentResponseBody? appointmentResponseBody;
Future<void> emitAppointmentStates(int ?doctor_id,String start_time )async{ 
  emit(AppointmentState.loading());

  final response = await appointmentRepo.appointmentRepo(AppointmentRequestBody(
    doctor_id: doctor_id!, start_time: start_time) );

response.when(success:(appointmentResponseBody){
  emit(AppointmentState.success(appointmentResponseBody.doctorInfoCard));

}, failure: (apiErrorModel) {
      emit(AppointmentState.failure( ));
    });

}



}
 