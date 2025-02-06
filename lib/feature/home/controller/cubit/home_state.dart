part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

 
  const factory HomeState.specializationsLoading() = SpecializationsLoading;
   const factory HomeState.specializationsSuccess(List<Specialization?>?specializationDataList) = SpecializationsSuccess;
  const factory HomeState.specializationsError(ApiErrorModel apiErrorModel) = SpecializationsError;

   
  const factory HomeState.doctorsSuccess(List<Doctors?>? doctorsList) = DoctorsSuccess;
  const factory HomeState.doctorsError(ApiErrorModel apiErrorModel) =  DoctorsError;

 
  const factory HomeState.onedoctorSuccess(Doctors? doctor ) = OneDoctorSuccess;
  
}

