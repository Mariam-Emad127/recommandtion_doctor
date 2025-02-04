
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recommandtion_doctor/core/routing/app_router.dart'; 
import 'core/routing/routes.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
     return ScreenUtilInit(
      designSize: Size(375, 812), // Base screen dimensions (width, height)
      minTextAdapt: true,         // Ensures text scales proportionally
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'ScreenUtil Example',
          theme: ThemeData(primarySwatch: Colors.blue),
          // initialRoute: isLoggedInUser ? Routes.homeScreen : Routes.loginScreen,//Routes.onBoardingScreen,
           //initialRoute :Routes.onBoardingScreen,
            initialRoute :Routes.homeScreen ,
          onGenerateRoute: appRouter.onGenerateRoute,
        );
      },
    );

  }




}
