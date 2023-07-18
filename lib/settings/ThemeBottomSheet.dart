import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


import '../MyTheme.dart';
import '../providers/AppConfigProvider.dart';

class ThemeBottomSheet extends StatefulWidget {

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
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
            onTap:() => provider.changeTheme(ThemeMode.light),
            child: provider.appMode==ThemeMode.light?
            getSelectedItemWidget(AppLocalizations.of(context)!.light):
            getUnselectedItemWidget(AppLocalizations.of(context)!.light)
          ),
          SizedBox(height: 10,),
          InkWell(
              onTap:() => provider.changeTheme(ThemeMode.dark),
              child: provider.appMode==ThemeMode.dark?
              getSelectedItemWidget(AppLocalizations.of(context)!.dark):
              getUnselectedItemWidget(AppLocalizations.of(context)!.dark)
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
