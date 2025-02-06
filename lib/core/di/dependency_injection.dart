import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:recommandtion_doctor/core/networking/api_service.dart';
import 'package:recommandtion_doctor/core/networking/dio_factory.dart';
import 'package:recommandtion_doctor/feature/home/data/apis/home_api_service.dart';
import 'package:recommandtion_doctor/feature/home/data/repos/home_repo.dart';
import 'package:recommandtion_doctor/feature/login/controller/cubit/login_cubit.dart';
 import 'package:recommandtion_doctor/feature/login/data/repo/login_repo.dart';
import 'package:recommandtion_doctor/feature/sign_up/data/repos/sign_up_repo.dart';
import 'package:recommandtion_doctor/feature/sign_up/logic/sign_up_cubit.dart';
import 'package:recommandtion_doctor/feature/user_profile/controller/cubit/get_userprofile_data_cubit.dart';
import 'package:recommandtion_doctor/feature/user_profile/data/apis/profile_api_service.dart';
 import 'package:recommandtion_doctor/feature/user_profile/data/repos/get_date_repo.dart';

final getIt= GetIt.instance;
Future  <void>setupGetIt() async {
Dio dio=DioFactory.getDio();
//Dio dio=Dio();

getIt.registerLazySingleton<ApiService>( ()=>ApiService(dio));
getIt.registerLazySingleton<LoginRepo>( ()=>LoginRepo(getIt()));
getIt.registerFactory<LoginCubit>( ()=>LoginCubit(getIt()));


getIt.registerLazySingleton<SignupRepo>( ()=>SignupRepo(getIt()));
getIt.registerFactory<SignupCubit>( ()=>SignupCubit(getIt()));


getIt.registerLazySingleton<HomeApiService>( ()=>HomeApiService(dio));
getIt.registerLazySingleton<HomeRepo>( ()=>HomeRepo(getIt()));
//getIt.registerLazySingleton<GetUserprofileDataCubit>(()=>GetUserprofileDataCubit(getIt()));

//getIt.registerFactory<HomeCubit>( ()=>HomeCubit(getIt()));


getIt.registerLazySingleton<ProfileApiService>( ()=>ProfileApiService(dio));
getIt.registerLazySingleton<GetDateRepo>(()=>GetDateRepo(getIt()));
getIt.registerLazySingleton<GetUserprofileDataCubit>(()=>GetUserprofileDataCubit(getIt()));


} 