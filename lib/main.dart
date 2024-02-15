import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic_app/Home/Hadith/HadithDetails.dart';
import 'package:islamic_app/Home/HomeScreen.dart';
import 'package:islamic_app/Home/Quran/SuraDetails.dart';
import 'package:islamic_app/SplashScreen.dart';
import 'package:islamic_app/my_theme.dart';
import 'package:islamic_app/providers/AppConfigProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    child: MyApp(),
    create: (context) {
      return AppConfigProvider();
    },
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (_) => SuraDetails(),
        HadithDetails.routeName: (context) => HadithDetails(),
      },
      theme: myTheme.lightTheme,
      locale: Locale('${provider.appLanguage}'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
