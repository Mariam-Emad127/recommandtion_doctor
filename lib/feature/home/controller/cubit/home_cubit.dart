import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recommandtion_doctor/core/helper/extensions.dart';
import 'package:recommandtion_doctor/core/networking/api_error_handler.dart';
import 'package:recommandtion_doctor/core/networking/api_error_model.dart';
import 'package:recommandtion_doctor/feature/home/data/models/specializations_response_model.dart';
import 'package:recommandtion_doctor/feature/home/data/repos/home_repo.dart';
import 'package:recommandtion_doctor/feature/login/data/models/login_response.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
HomeRepo homeRepo;
//final LoginResponse? loginResponse;
  HomeCubit(this.homeRepo ) : super(HomeState.initial());
List<Specialization?>?specializationDataList=[];

void getSpecializations ()async{
 emit(HomeState.specializationsLoading());
 final response=await homeRepo.home ();

response.when(
  success:(specializationsResponseModel){
    specializationDataList=specializationsResponseModel.specialization;
          getDoctorsList(specializationId:specializationDataList?.first?.id);
 //specializationDataList?.first?.id
 emit(HomeState.specializationsSuccess(specializationsResponseModel.specialization));
},

failure: (apiErrorModel) {
  emit(HomeState.specializationsError(apiErrorModel   ));
 },
);}

void getDoctorsList({required int? specializationId}){
List<Doctors?>doctorsList=getDoctorsListBySpecializationId(specializationId);
if(!doctorsList.isEmptyOrNull()){
emit(HomeState.doctorsSuccess(doctorsList));
}else{
  emit(HomeState.doctorsError(ApiErrorModelHandler.handle( "No Doctors Found")));
}


}
  getDoctorsListBySpecializationId(specializationId) {
    return specializationDataList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctors;
  }

/*
void getUserName()async{
  final response=await homeRepo.getUserNameInfo();
 response.when(
      success: (loginResponse) {
        print("222222 $loginResponse");
        emit(HomeState.dataSuccess (loginResponse ));
      },
      failure: (errorHandler) {
        emit(HomeState.dataError(errorHandler));
      },
    );
}
*/


}
