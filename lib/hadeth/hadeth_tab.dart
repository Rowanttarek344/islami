import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_new/hadeth/hadeth_name.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../providers/AppConfigProvider.dart';


import '../MyTheme.dart';

class hadeth_tab extends StatefulWidget {
  @override
  State<hadeth_tab> createState() => _hadeth_tabState();
}

class _hadeth_tabState extends State<hadeth_tab> {
  List<hadeth_item> hadethItem=[];

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);

    if(hadethItem.isEmpty){
      load_hadeth();
    }
    return  Column(
      children: [
        Center(child: Image.asset('assets/images/hadeth_image.png')),
        Divider(
          thickness: 2,
          color: MyTheme.gold_primary,
        ),
        Text(AppLocalizations.of(context)!.ahadeth,style: Theme.of(context).primaryTextTheme.headline1,),
        Divider(
          thickness: 2,
          color: MyTheme.gold_primary,
        ),
        Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return hadeth_name(name:hadethItem[index].title,content: hadethItem[index].content,);
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 2,
                    color: MyTheme.gold_primary,
                  );
                },
                itemCount: hadethItem.length
            )
        ),
      ],
    );
  }

  void load_hadeth() async{
    String allAhadeth=await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadeth=allAhadeth.split('#\r\n');
    for(int i=0;i<ahadeth.length;i++){
      List<String> hadeth=ahadeth[i].split('\n');
      String title=hadeth[0];
      hadeth.removeAt(0);
      hadethItem.add(hadeth_item(title: title, content: hadeth));
    }
    setState(() {

    });

  }
}
class hadeth_item{
  String title;
  List<String>content;
  hadeth_item({required this.title,required this.content});
}
