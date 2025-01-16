import 'package:flutter/material.dart';
import 'package:recommandtion_doctor/core/di/dependency_injection.dart';
import 'package:recommandtion_doctor/core/helper/constans.dart';
import 'package:recommandtion_doctor/core/helper/extensions.dart';
import 'package:recommandtion_doctor/core/helper/shared_pref_helper.dart';
import 'package:recommandtion_doctor/core/routing/app_router.dart';
import 'package:recommandtion_doctor/doc_app.dart';

bool isLoggedInUser = false;
void main() async{
    WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await checkIfLoggedInUser();

  runApp(  DocApp(appRouter: AppRouter(),));
}

checkIfLoggedInUser() async {
String ?userToken=await SharedPrefHelper.getSecuredString (SharedPrefKeys.userToken);
if(!userToken.isEmptyOrNull()){
isLoggedInUser = true;


}
else {isLoggedInUser =false;}
}

