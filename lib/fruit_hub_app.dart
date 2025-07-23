import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helper/function/on_generate_route.dart';
import 'package:fruit_hub/core/utils/cubits/localization/localization_cubit.dart';
import 'package:fruit_hub/core/utils/thems.dart';
import 'package:fruit_hub/features/splash/presentation/pages/splash_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FruitHubApp extends StatelessWidget {
  const FruitHubApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocalizationCubit(),
      child: BlocBuilder<LocalizationCubit, LocalizationState>(
        builder: (context, state) {
          return MaterialApp(
            localizationsDelegates: [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            locale: LocalizationCubit.isAraic ? Locale('ar') : Locale('en'),
            supportedLocales: S.delegate.supportedLocales,
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: Thems.lightTheme,
            onGenerateRoute: onGenerateRoute,
            initialRoute: SplashView.routeName,
          );
        },
      ),
    );
  }
}
