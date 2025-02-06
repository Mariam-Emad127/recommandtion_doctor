import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recommandtion_doctor/feature/home/data/models/doctor_response.dart';
import 'package:recommandtion_doctor/feature/home/data/repos/home_repo.dart';
import '../../../../core/networking/api_error_model.dart';
 
part 'getdoctors_state.dart';
part 'getdoctors_cubit.freezed.dart';

class GetdoctorsCubit extends Cubit<GetdoctorsState> {
  HomeRepo homeRepo;
      List<AllDoctorsModel>?allDoctorsModel=[];
       //allDoctorsModel=doctorResponse.doctorList;
  GetdoctorsCubit(this.homeRepo) : super(GetdoctorsState.initial());

  DoctorResponse? doctorResponse;

   Future<void> getAllDoctors() async {
    emit(GetdoctorsState.doctorsLoading());
    try {
      final response = await homeRepo.getAllDoctors();
      response.when(success: (doctorResponse) {
           print("Doctor list: ${doctorResponse.doctorList}"); // Check if it's null
         emit(GetdoctorsState.doctorsSuccess(doctorResponse.doctorList   ));
      }, failure: (apiErrorModel) {
        emit(GetdoctorsState.doctorsError(apiErrorModel));
      });
    } catch (e) {
      print(e);
    }
  }

  Future<void> getserchaDoctors(String letter) async {
final response=await homeRepo.searchDoctor(name: letter);
response.when(success:  (doctorResponse){
  allDoctorsModel=doctorResponse.doctorList;
emit(GetdoctorsState.doctorsSuccess(allDoctorsModel));


}, failure:  (apiErrorModel) {
        emit(GetdoctorsState.doctorsError(apiErrorModel));
      });




  }

}
