import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_new/quran/sura_details_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../providers/AppConfigProvider.dart';

import '../MyTheme.dart';

class sura_details extends StatefulWidget {
  static const String routeName = 'sura-details';

  @override
  State<sura_details> createState() => _sura_detailsState();
}

class _sura_detailsState extends State<sura_details> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);

    var args = ModalRoute.of(context)!.settings.arguments as sura_details_args;
    if (verses.isEmpty) {
      load_sura(args.index);
    }

    return Stack(children: [
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
          title: Text(
            AppLocalizations.of(context)!.islami,
            style: Theme.of(context).primaryTextTheme.headline1,
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(24),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: provider.appMode==ThemeMode.light?
              Colors.white:
              MyTheme.dark_blue,
              borderRadius: BorderRadius.circular(24)),
          child: Column(
            children: [
              Text(
                '${args.title}',
                style: Theme.of(context).primaryTextTheme.headline4,
              ),
              Divider(
                thickness: 2,
                color: MyTheme.gold_primary,
              ),
              Expanded(
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return sura_details_item(
                          text: verses[index], index: index);
                    },
                    itemCount: verses.length),
              ),
            ],
          ),
        ),
      ),
    ]);
  }

  void load_sura(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    lines.removeAt(lines.length - 1);
    lines.removeAt(lines.length - 2);
    verses = lines;
    setState(() {});
  }
}

class sura_details_args {
  String title;
  int index;
  sura_details_args({required this.title, required this.index});
}
