import 'package:dio/dio.dart';
import 'package:recommandtion_doctor/core/networking/api_constant.dart';
import 'package:recommandtion_doctor/feature/user_profile/data/models/profile_request_model.dart';
import 'package:recommandtion_doctor/feature/user_profile/data/models/profile_response.dart';
import 'package:recommandtion_doctor/feature/user_profile/data/models/update_profile_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'profile_api_service.g.dart';
@RestApi(baseUrl:  ApiConstants.apiBaseUrl)
abstract class ProfileApiService {
factory ProfileApiService(Dio dio)=_ProfileApiService;

@GET("user/profile")
Future<ProfileResponseModel>getUserData();

@POST("user/update")
Future<UpdateProfileResponse>updateUserData(@Body() ProfileRequestModel profileRequestModel);
}