import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../providers/AppConfigProvider.dart';


import '../MyTheme.dart';

class hadeth_details extends StatelessWidget {
  static const String routeName = 'hadeth-details';



  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);

    var args = ModalRoute.of(context)!.settings.arguments as hadeth_details_args;
    List<String> hadeth_content=[];
    hadeth_content=args.content;

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
                      return Text(args.content[index],
                      style: Theme.of(context).primaryTextTheme.subtitle2,
                      textAlign: TextAlign.center,);
                    },
                    itemCount: hadeth_content.length),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
class hadeth_details_args{
  String title;
  List<String> content;
  hadeth_details_args({required this.title,required this.content});
}
