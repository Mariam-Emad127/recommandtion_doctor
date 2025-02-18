import 'package:dio/dio.dart';
import 'package:recommandtion_doctor/feature/Book%20Appointment/data/models/appointment_request_body.dart';
import 'package:recommandtion_doctor/feature/Book%20Appointment/data/models/appointment_response_body.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/api_constant.dart';
part 'appointment_api_services.g.dart';
@RestApi(baseUrl: ApiConstants.apiBaseUrl)
 abstract class AppointmentApiServices {
  factory AppointmentApiServices(Dio dio) =_AppointmentApiServices;

@POST("appointment/store")
Future<AppointmentResponseBody?>?AppointmentReques(@Body() AppointmentRequestBody appointment_request_body);


}