part of 'getdoctors_cubit.dart';

@freezed
class GetdoctorsState with _$GetdoctorsState {
  const factory GetdoctorsState.initial() = _Initial;

  const factory GetdoctorsState.doctorsSuccess(List<AllDoctorsModel> ?allDoctorsModel) = DoctorsSuccess;
  const factory GetdoctorsState.doctorsError(ApiErrorModel apiErrorModel) =  DoctorsError;
  const factory GetdoctorsState.doctorsLoading() =doctorsLoading;

}
