import 'package:flutter/material.dart';
import 'package:monble/core/constants/app_colors.dart';
import 'package:monble/core/constants/app_constants.dart';
import 'package:monble/core/l10n/app_localizations.dart';
import 'package:monble/core/navigation/router.dart';

class MonBleApp extends StatelessWidget {
  const MonBleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppConstants.appName,
      routerConfig: routerConfig,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      theme: ThemeData(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.bodyBackgroundColor,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        scaffoldBackgroundColor: AppColors.bodyBackgroundColor,
        fontFamily: AppConstants.appFontFamily,
      ),
    );
  }
}
