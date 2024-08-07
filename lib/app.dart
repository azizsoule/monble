import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:monble/core/constants/app_colors.dart';
import 'package:monble/core/constants/app_constants.dart';
import 'package:monble/core/l10n/config.dart';
import 'package:monble/core/navigation/router.dart';

class MonBleApp extends StatelessWidget {
  const MonBleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppConstants.appName,
      routerConfig: routerConfig,
      locale: defaultLocale,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primary,
          centerTitle: true,
        ),
        scaffoldBackgroundColor: AppColors.bodyBackgroundColor,
        fontFamily: AppConstants.appFontFamily,
      ),
    );
  }
}
