import 'dart:math';

import 'package:bloc/bloc.dart';
 import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recommandtion_doctor/core/networking/api_error_handler.dart';
import 'package:recommandtion_doctor/feature/user_profile/data/models/profile_response.dart';
 import 'package:recommandtion_doctor/feature/user_profile/data/repos/get_date_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'get_userprofile_data_state.dart';
part 'get_userprofile_data_cubit.freezed.dart';

class GetUserprofileDataCubit extends Cubit<GetUserprofileDataState> {
  final GetDateRepo getDateRepo;
  GetUserprofileDataCubit(this.getDateRepo) : super(GetUserprofileDataState.initial());

void emitGetUserProfile()async{
emit(GetUserprofileDataState.loading());
final response=await getDateRepo.getUserData();

response.when(success: (profilegetData)async{
String name=profilegetData.userData?.first.name??"";  
String email=profilegetData.userData?.first.email ??"";  
       final prefs1 = await SharedPreferences.getInstance();
           prefs1.setString("usernam", name);
           prefs1.setString("email", email);
   emit(GetUserprofileDataState.success(profilegetData   ));
}, failure:(e) {ApiErrorModelHandler.handle(e.message);}

 );

}


}
