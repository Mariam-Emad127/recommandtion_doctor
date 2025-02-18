import 'package:recommandtion_doctor/core/networking/api_result.dart';
import 'package:recommandtion_doctor/feature/Book%20Appointment/data/apis/appointment_api_services.dart';
import 'package:recommandtion_doctor/feature/Book%20Appointment/data/models/appointment_request_body.dart';
import 'package:recommandtion_doctor/feature/Book%20Appointment/data/models/appointment_response_body.dart';

import '../../../../core/networking/api_error_handler.dart';

class AppointmentRepo {
AppointmentApiServices appointmentApiServices;
AppointmentRepo(this.appointmentApiServices);
Future<ApiResult<AppointmentResponseBody>>appointmentRepo(AppointmentRequestBody appointment_request_body)async{
try{
final response=await appointmentApiServices.AppointmentReques(appointment_request_body);
return ApiResult.success(response!);
}catch(e){
     return ApiResult.failure(ApiErrorModelHandler.handle(e));


}
}
}