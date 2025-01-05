import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/src/pretty_dio_logger.dart';

class DioFactory{


//DioFactory._(); 
static Dio ?dio ;
 Future<Dio> getDio() async {
if(dio==null){
Duration timeOut=Duration(seconds: 30);
dio=Dio();
dio!
        ..options.connectTimeout = timeOut ..options.receiveTimeout = timeOut;
        addDioInterceptor();
return dio!;
}else{
        return dio!;
}

 }


static void addDioInterceptor(){
 dio?.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,));

}


}