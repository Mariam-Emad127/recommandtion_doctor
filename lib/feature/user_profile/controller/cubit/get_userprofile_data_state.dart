part of 'get_userprofile_data_cubit.dart';

@freezed
class GetUserprofileDataState with _$GetUserprofileDataState {
  const factory GetUserprofileDataState.initial() = _Initial;

  const factory GetUserprofileDataState.loading() = Loading;
  const factory GetUserprofileDataState.success(ProfileResponseModel  profileResponseModel ) = Success;
  const factory GetUserprofileDataState.error({required String error}) = Error;
}