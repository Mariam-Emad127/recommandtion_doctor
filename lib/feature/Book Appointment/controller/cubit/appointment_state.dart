part of 'appointment_cubit.dart';

@freezed
class AppointmentState with _$AppointmentState {
  const factory AppointmentState.initial() = _Initial;
  const factory AppointmentState.success(DoctorInfoCard ?doctorInfoCard) = Success;
  const factory AppointmentState.failure() = Failure;
  const factory AppointmentState.loading() = Loading;

}
