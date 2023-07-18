import 'package:flutter/material.dart';
import 'package:islami_new/MyTheme.dart';
import 'package:islami_new/quran/sura_name.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../providers/AppConfigProvider.dart';


class quran_tab extends StatelessWidget {

  List<String> sura_names=[
    "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
  ];

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);

    return Column(
      children: [
        Center(child: Image.asset('assets/images/quran_image.png')),
        Divider(
          thickness: 2,
          color: MyTheme.gold_primary,
        ),
        Text(AppLocalizations.of(context)!.sura_name,style: Theme.of(context).primaryTextTheme.headline1,),
        Divider(
          thickness: 2,
          color: MyTheme.gold_primary,
        ),
        Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return suran_name(name: sura_names[index], index: index);
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 2,
                    color: MyTheme.gold_primary,
                  );
                },
                itemCount: sura_names.length
            )
        )




      ],
    );
  }
}
