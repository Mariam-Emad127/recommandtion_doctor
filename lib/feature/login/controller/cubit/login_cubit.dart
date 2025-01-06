import 'package:bloc/bloc.dart';
 import 'package:recommandtion_doctor/feature/login/controller/cubit/login_state.dart';
import 'package:recommandtion_doctor/feature/login/data/models/login_request_body.dart';
import 'package:recommandtion_doctor/feature/login/data/models/repo/login_repo.dart';
 

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(LoginState.initial());

 void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loginLoading());
    final response = await loginRepo.login(
        loginRequestBody
    );
    response.when(success: (loginResponse) async {
       emit(LoginState.loginSuccess(loginResponse));
    }, failure: (error) {
      emit(LoginState.loginError(error: error.apiErrorModel.message ?? ''));
    });
  }


}
