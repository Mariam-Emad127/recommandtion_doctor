 import 'package:recommandtion_doctor/core/networking/api_error_handler.dart';
 import 'package:recommandtion_doctor/core/networking/api_result.dart';
import 'package:recommandtion_doctor/feature/user_profile/data/apis/profile_api_service.dart';
import 'package:recommandtion_doctor/feature/user_profile/data/models/profile_response.dart';

class GetDateRepo {
    ProfileApiService profileApiService;

  GetDateRepo(   this.profileApiService);

  Future<ApiResult<ProfileResponseModel>> getUserData() async {
    try {
      final response = await profileApiService.getUserData();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorModelHandler.handle(e));
    }
  }
}
