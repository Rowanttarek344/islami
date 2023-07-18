import 'package:flutter/material.dart';
import 'package:islami_new/settings/LanguageBottomSheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_new/settings/ThemeBottomSheet.dart';
import 'package:provider/provider.dart';

import '../providers/AppConfigProvider.dart';


class settings_tab extends StatefulWidget {

  @override
  State<settings_tab> createState() => _settings_tabState();
}

class _settings_tabState extends State<settings_tab> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);

    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language,style: Theme.of(context).primaryTextTheme.subtitle1,),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(16)
            ),
            child: InkWell(
              onTap: () {
                showLanguageBottomSheet();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                     provider.appLanguage=='en'?
                     AppLocalizations.of(context)!.english:
                     AppLocalizations.of(context)!.arabic,
                     style: Theme.of(context).primaryTextTheme.subtitle1,),
                  Icon(Icons.arrow_drop_down,size: 35,)
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Text(AppLocalizations.of(context)!.theme,style: Theme.of(context).primaryTextTheme.subtitle1,),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(16)
            ),
            child: InkWell(
              onTap: showThemeBottomSheet ,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    provider.appMode==ThemeMode.light?
                  AppLocalizations.of(context)!.light:
                  AppLocalizations.of(context)!.dark,
                  style: Theme.of(context).primaryTextTheme.subtitle1,
                  ),
                  Icon(Icons.arrow_drop_down,size: 35,)
                ],
              ),
            ),
          ),


        ],
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return LanguageBottomSheet();
        },
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ThemeBottomSheet();
      },
    );
  }

}
