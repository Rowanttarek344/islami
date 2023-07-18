import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


import '../MyTheme.dart';
import '../providers/AppConfigProvider.dart';

class LanguageBottomSheet extends StatefulWidget {

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);

    return Container(
      color: provider.appMode==ThemeMode.light?
      Colors.white:
      MyTheme.dark_blue,
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap:() => provider.changeLanguage('en'),
            child: provider.appLanguage=='en'?
            getSelectedItemWidget(AppLocalizations.of(context)!.english):
            getUnselectedItemWidget(AppLocalizations.of(context)!.english)
          ),
          SizedBox(height: 10,),
          InkWell(
              onTap:() => provider.changeLanguage('ar'),
              child: provider.appLanguage=='ar'?
              getSelectedItemWidget(AppLocalizations.of(context)!.arabic):
              getUnselectedItemWidget(AppLocalizations.of(context)!.arabic)
          ),

        ],

      ),
    );
  }

  getSelectedItemWidget(String s) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(s,style: Theme.of(context).primaryTextTheme.headline2,),
        Icon(Icons.check,color: Theme.of(context).primaryColor,)
      ],
    );

  }

  getUnselectedItemWidget(String s) {
    return Text(
        s,
        style: Theme.of(context).primaryTextTheme.headline6
    );

  }
}
