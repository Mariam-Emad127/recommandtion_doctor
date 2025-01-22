import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recommandtion_doctor/feature/user_profile/data/models/update_profile_response.dart';

part 'updae_userprofile_state.dart';
part 'updae_userprofile_cubit.freezed.dart';

class UpdaeUserprofileCubit extends Cubit<UpdaeUserprofileState> {
  UpdaeUserprofileCubit() : super(UpdaeUserprofileState.initial());
}
