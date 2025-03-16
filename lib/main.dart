import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recommandtion_doctor/core/di/dependency_injection.dart';
import 'package:recommandtion_doctor/core/helper/constans.dart';
import 'package:recommandtion_doctor/core/helper/extensions.dart';
import 'package:recommandtion_doctor/core/helper/shared_pref_helper.dart';
import 'package:recommandtion_doctor/core/routing/app_router.dart';
import 'package:recommandtion_doctor/doc_app.dart';
 
   bool isLoggedInUser =false ;
void main() async{
    WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  //await ScreenUtil.ensureScreenSize();



  runApp(  DocApp(appRouter: AppRouter(),));
    /*
    try{
       checkIfLoggedInUser();
   }catch(e){print( "kkkkkkkkkkkkkkkkkkkkkkkk@$e");}  
*/
}
 Future<void> checkIfLoggedInUser() async  {
  // للتحقق إذا كانت الدالة تُستدعى
 String ?userToken=await  SharedPrefHelper.getString(SharedPrefKeys.userToken);
String s="nnnnnnnnnnnn";
  print( "hhhhhhhhhhhhhhuserToken$s");


if( userToken=="" ){isLoggedInUser = false;}
else {isLoggedInUser =true;}
 }


