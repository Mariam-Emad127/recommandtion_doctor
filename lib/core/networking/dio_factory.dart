import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/src/pretty_dio_logger.dart';
import 'package:recommandtion_doctor/core/helper/constans.dart';
import 'package:recommandtion_doctor/core/helper/shared_pref_helper.dart';
 
class DioFactory{


//DioFactory._(); 
static Dio ?dio ;
 static Dio  getDio()   {
if(dio==null){
Duration timeOut=Duration(seconds: 30);
dio=Dio();
dio!
        ..options.connectTimeout = timeOut ..options.receiveTimeout = timeOut;
        addDioInterceptor();
        addDioHeaders();
return dio!;
}else{
        return dio!;
}

 }
  static void addDioHeaders() async {
    dio?.options.headers = {
      'Accept': 'application/json',
      "Authorization":"Bearer ${await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken)}"
      //eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzM2NDYwNTc1LCJleHAiOjE3MzY1NDY5NzUsIm5iZiI6MTczNjQ2MDU3NSwianRpIjoicml2NHBYZDdzSHF4WTZJMyIsInN1YiI6IjIiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.t9odgQBqZXpdaJ-XcQ2jL8eMVETd-rGrGe2nkHAP7eU
      };
      }


//   عشان يحفظ التوكين وهو  بيعمل  " لوجين"  ويرجعة تانى لمما ييجى يعمل جيت  
static void setTokenIntoHeaderAfterLogin(String token){

        dio?.options.headers={
"Accept": 'application/json',
"Authorization":"Bearer $token"

        };
}



static void addDioInterceptor(){
 dio?.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,));

}


}