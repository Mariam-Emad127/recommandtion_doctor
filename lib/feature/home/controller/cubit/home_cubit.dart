import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recommandtion_doctor/core/networking/api_error_handler.dart';
import 'package:recommandtion_doctor/core/networking/api_result.dart';
import 'package:recommandtion_doctor/feature/home/data/models/specializations_response_model.dart';
import 'package:recommandtion_doctor/feature/home/data/repos/home_repo.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
HomeRepo homeRepo;

  HomeCubit(this.homeRepo) : super(HomeState.initial());
List<Specialization>specializationDataList=[];
void getSpecializations ()async{
 emit(HomeState.specializationsLoading());
 final response=await homeRepo.home ();

response.when(
  success:(specializationsResponseModel){
 emit(HomeState.specializationsSuccess(specializationsResponseModel));
},

failure: (errorHandler) {
  emit(HomeState.specializationsError(errorHandler   ));
  //.apiErrorModel.message??""
},


);

}


}
