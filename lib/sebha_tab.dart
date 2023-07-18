import 'package:flutter/material.dart';
import 'package:islami_new/MyTheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'dart:math' as maths;


import '../providers/AppConfigProvider.dart';


class sebha_tab extends StatefulWidget {
  @override
  State<sebha_tab> createState() => _sebha_tabState();
}

class _sebha_tabState extends State<sebha_tab> {
  int counter=0;

  List<String> tasbeh=['سبحان الله','الحمد لله',' لا اله الا الله','الله اكبر','لا حول ولا قوة الا بالله'];

  int index=0;
  double angle=0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 20,),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset('assets/images/sebha_head.png'),
              Padding(
                padding:EdgeInsets.only(top:MediaQuery.of(context).size.height*.075 ),
                child: Transform.rotate(
                  angle: maths.pi/100*angle,
                  child: GestureDetector(
                      child: Image.asset('assets/images/sebha_body.png'),
                    onTap: onSebhaTab,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
            ),
            child: Text(
              AppLocalizations.of(context)!.tasbehat_count,
              style:Theme.of(context).primaryTextTheme.subtitle1,
            ),

          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              color: MyTheme.light_gold
            ),
            child: Text(
              counter.toString(),
              style:Theme.of(context).primaryTextTheme.subtitle2,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyTheme.gold_primary
            ),
            child: Text(
              tasbeh[index],
              style:TextStyle(color:Colors.white,fontSize: 24),
            ),
          ),



        ],
      ),
    );
  }

  void onSebhaTab() {
    counter++;
    if(counter%33==0){
      index++;
    }
    if(index==tasbeh.length){
      index=0;
    }
    angle+=100/33;
    setState(() {

    });

  }
}
