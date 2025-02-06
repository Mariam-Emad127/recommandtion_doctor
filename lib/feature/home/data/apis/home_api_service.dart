
import 'package:dio/dio.dart';
import 'package:recommandtion_doctor/feature/home/data/models/doctor_response.dart';
import 'package:recommandtion_doctor/feature/home/data/models/specializations_response_model.dart';
 import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../../core/networking/api_constant.dart';
 
part 'home_api_service.g.dart';
@RestApi(baseUrl:ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) =_HomeApiService;
  @GET("specialization/index")
  Future<SpecializationsResponseModel> getSpecialization();
 
 //@Get("doctor/doctor-search?name=$name")
//Future<SpecializationsResponseModel>getSearchedDoctor(String name);
@GET("doctor/doctor-search")
Future<DoctorResponse> searchDoctor(@Query("name") String name);

@GET("doctor/index")
Future<DoctorResponse> getAllDoctors( );
}
 