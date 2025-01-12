import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:recommandtion_doctor/core/helper/constans.dart';
import 'package:recommandtion_doctor/core/helper/shared_pref_helper.dart';
import 'package:recommandtion_doctor/core/networking/dio_factory.dart';
import 'package:recommandtion_doctor/feature/login/controller/cubit/login_state.dart';
import 'package:recommandtion_doctor/feature/login/data/models/login_request_body.dart';
import 'package:recommandtion_doctor/feature/login/data/repo/login_repo.dart';
  

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(LoginState.initial());


TextEditingController email=TextEditingController();
TextEditingController password=TextEditingController();
  final formKey = GlobalKey<FormState>();
  void emitLoginStates() async {
    emit(const LoginState.loginLoading());
    final response = await loginRepo.login(
       LoginRequestBody(
        email: email.text ,
        password: password.text ,
      ),

    );
    response.when(success: (loginResponse) async {
userTokentoken(loginResponse.loginUserData?.token??"");

       emit(LoginState.loginSuccess(loginResponse));
    }, failure: (error) {
      emit(LoginState.loginError(error: error.apiErrorModel.message ?? ''));
    });
  }
Future <void>userTokentoken(String token)async{
await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken,token);
DioFactory.setTokenIntoHeaderAfterLogin(token);
}

}
