import 'package:flutter/material.dart';
import 'package:recommandtion_doctor/core/di/dependency_injection.dart';
import 'package:recommandtion_doctor/core/routing/app_router.dart';
import 'package:recommandtion_doctor/doc_app.dart';

void main() {
  setupGetIt();
  runApp(  DocApp(appRouter: AppRouter(),));
}


