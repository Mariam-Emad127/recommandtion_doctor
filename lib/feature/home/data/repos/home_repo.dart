import 'package:recommandtion_doctor/core/networking/api_error_handler.dart';
import 'package:recommandtion_doctor/core/networking/api_result.dart';
import 'package:recommandtion_doctor/feature/home/data/apis/home_api_service.dart';
 
import '../models/doctor_response.dart';
import '../models/specializations_response_model.dart';

class HomeRepo{
    HomeApiService homeApiService;

  HomeRepo(this.homeApiService);
  Future<ApiResult<SpecializationsResponseModel>>home()async{
    try{
    final response=await homeApiService.getSpecialization();

 return ApiResult.success(response);

  }catch(e){
     return ApiResult.failure(ApiErrorModelHandler.handle(e));

    }
    }


Future <ApiResult<DoctorResponse>>searchDoctor({required String name})async{
try{
final response=await homeApiService.searchDoctor(name);

return ApiResult.success(response);
}catch(e){

  return ApiResult.failure(ApiErrorModelHandler.handle(e));
}
}


  Future<ApiResult<DoctorResponse>>getAllDoctors()async{
    try{
    final response=await homeApiService.getAllDoctors();

 return ApiResult.success(response);

  }catch(e){
     return ApiResult.failure(ApiErrorModelHandler.handle(e));

    }
    }


}