import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:recommandtion_doctor/core/networking/api_service.dart';
import 'package:recommandtion_doctor/core/networking/dio_factory.dart';
import 'package:recommandtion_doctor/feature/home/controller/cubit/home_cubit.dart';
import 'package:recommandtion_doctor/feature/home/data/apis/home_api_service.dart';
import 'package:recommandtion_doctor/feature/home/data/repos/home_repo.dart';
import 'package:recommandtion_doctor/feature/login/controller/cubit/login_cubit.dart';
import 'package:recommandtion_doctor/feature/login/data/repo/login_repo.dart';
import 'package:recommandtion_doctor/feature/sign_up/data/repos/sign_up_repo.dart';
import 'package:recommandtion_doctor/feature/sign_up/logic/sign_up_cubit.dart';

final getIt= GetIt.instance;
Future  <void>setupGetIt() async {
Dio dio=DioFactory.getDio();
//Dio();

getIt.registerLazySingleton<ApiService>( ()=>ApiService(dio));
getIt.registerLazySingleton<LoginRepo>( ()=>LoginRepo(getIt()));
getIt.registerFactory<LoginCubit>( ()=>LoginCubit(getIt()));


getIt.registerLazySingleton<SignupRepo>( ()=>SignupRepo(getIt()));
getIt.registerFactory<SignupCubit>( ()=>SignupCubit(getIt()));


getIt.registerLazySingleton<HomeApiService>( ()=>HomeApiService(dio));
getIt.registerLazySingleton<HomeRepo>( ()=>HomeRepo(getIt()));
//getIt.registerFactory<HomeCubit>( ()=>HomeCubit(getIt()));


} 