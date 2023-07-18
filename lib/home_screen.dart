import 'package:flutter/material.dart';
import 'package:islami_new/MyTheme.dart';
import 'package:islami_new/hadeth/hadeth_tab.dart';
import 'package:islami_new/providers/AppConfigProvider.dart';
import 'package:islami_new/quran/quran_tab.dart';
import 'package:islami_new/radio_tab.dart';
import 'package:islami_new/sebha_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_new/settings/settings_tab.dart';

import 'package:provider/provider.dart';



class home_screen extends StatefulWidget {

static const String routeName='home-screen';

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
List<Widget> tabs=[
  radio_tab(),sebha_tab(),hadeth_tab(),quran_tab(),settings_tab()
];

int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);

    return Stack(
      children: [
        provider.appMode==ThemeMode.light?
        Image.asset('assets/images/background.png',
          fit: BoxFit.fill,
          height: double.infinity,
          width: double.infinity,
        ):
        Image.asset('assets/images/background_dark.png',
          fit: BoxFit.fill,
          height: double.infinity,
          width: double.infinity,
        ),

        Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.islami,style: Theme.of(context).primaryTextTheme.headline1,),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(canvasColor:
            provider.appMode==ThemeMode.light?
            MyTheme.gold_primary:
            MyTheme.dark_blue
            ),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
                onTap: (value) {
                  selectedIndex=value;
                  setState(() {

                  });

                },
                items: [
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/ic_radio.png')),
                    label: AppLocalizations.of(context)!.radio
                  ),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/ic_sebha.png')),
                      label: AppLocalizations.of(context)!.sebha
                  ),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/ic_hadeth.png')),
                      label: AppLocalizations.of(context)!.hadeth
                  ),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/ic_quran.png')),
                      label: AppLocalizations.of(context)!.quran
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings),
                      label: AppLocalizations.of(context)!.settings
                  ),



                ]),


          ) ,
          body: tabs[selectedIndex]
          ),





      ],
    ) ;



  }
}
