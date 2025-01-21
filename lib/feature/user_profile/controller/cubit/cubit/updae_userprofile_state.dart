part of 'updae_userprofile_cubit.dart';

@freezed
class UpdaeUserprofileState with _$UpdaeUserprofileState {
  const factory UpdaeUserprofileState.initial() = _Initial;

    const factory UpdaeUserprofileState.loading() = LoadingUpdate;
  const factory UpdaeUserprofileState.success(UpdateProfileResponse updateProfileResponse)  = SuccessUpdate;
  const factory UpdaeUserprofileState.error({required String error}) = ErrorUpdate;
}
