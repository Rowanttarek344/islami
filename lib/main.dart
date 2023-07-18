import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_new/home_screen.dart';
import 'package:islami_new/providers/AppConfigProvider.dart';
import 'package:islami_new/quran/sura_details.dart';
import 'package:provider/provider.dart';

import 'MyTheme.dart';
import 'hadeth/hadeth_details.dart';



void main(){
  runApp(ChangeNotifierProvider(
      create:(context) => AppConfigProvider(),
  child: MyApp()));
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return MaterialApp(

      debugShowCheckedModeBanner: false,
        routes: {
        home_screen.routeName:(context) => home_screen(),
        sura_details.routeName:(context) => sura_details(),
          hadeth_details.routeName:(context) => hadeth_details(),



        },
      initialRoute:home_screen.routeName ,
      theme:MyTheme.lightTheme ,
      darkTheme:MyTheme.darkTheme ,
      themeMode: provider.appMode,

      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.appLanguage),
    );
  }
}
