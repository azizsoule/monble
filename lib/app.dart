import 'package:flutter/material.dart';
import 'package:monble/core/constants/app_colors.dart';
import 'package:monble/core/constants/app_constants.dart';
import 'package:monble/core/navigation/router.dart';

class MonBleApp extends StatelessWidget {
  const MonBleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: routerConfig,
      title: AppConstants.appName,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primary,
          centerTitle: true,
        ),
        scaffoldBackgroundColor: AppColors.bodyBackgroundColor,
        fontFamily: 'Inter',
      ),
    );
  }
}
