import 'package:recommandtion_doctor/core/networking/api_error_handler.dart';
import 'package:recommandtion_doctor/core/networking/api_result.dart';
import 'package:recommandtion_doctor/core/networking/api_service.dart';
import 'package:recommandtion_doctor/feature/login/data/models/login_request_body.dart';
import 'package:recommandtion_doctor/feature/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (errror) {
      return ApiResult.failure(ErrorHandler.handle( errror));
    }
  }
}