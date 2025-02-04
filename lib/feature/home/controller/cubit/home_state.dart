part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

//List<Doctors?>?doctors_list;
  // Specializations
  const factory HomeState.specializationsLoading() = SpecializationsLoading;
  //const factory HomeState.specializationsSuccess(SpecializationsResponseModel specializationsresponsemodel ) = SpecializationsSuccess;
  const factory HomeState.specializationsSuccess(List<Specialization?>?specializationDataList) = SpecializationsSuccess;
  const factory HomeState.specializationsError(ApiErrorModel apiErrorModel) = SpecializationsError;

  // Doctors
  const factory HomeState.doctorsSuccess(List<Doctors?>? doctorsList) = DoctorsSuccess;
  const factory HomeState.doctorsError(ApiErrorModel apiErrorModel) =  DoctorsError;

 
  const factory HomeState.onedoctorSuccess(Doctors? doctor ) = OneDoctorSuccess;
  
 

