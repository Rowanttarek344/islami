import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/quran/sura_details_item.dart';

import '../MyTheme.dart';

class sura_details extends StatefulWidget {
  static const String routeName='sura-details';

  @override
  State<sura_details> createState() => _sura_detailsState();
}

class _sura_detailsState extends State<sura_details> {
  List<String> verses=[];

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)!.settings.arguments as sura_details_args;
    if(verses.isEmpty){
      load_sura(args.index);
    }

    return Stack(children: [
      Image.asset(
        'assets/images/background.png',
        fit: BoxFit.fill,
        height: double.infinity,
        width: double.infinity,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            '${args.title}',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(24),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24)

          ),
          child: ListView.builder(
              itemBuilder: (context, index) {
                return sura_details_item(text: verses[index], index: index);
              },

              itemCount: verses.length
          ),
        ),
      ),
    ]);
  }

  void load_sura(int index) async{
    String content=await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String> lines=content.split('\n');
    lines.removeAt(lines.length-1);
    lines.removeAt(lines.length-2);
    verses=lines;
    setState(() {

    });


  }
}
class sura_details_args {
  String title;
  int index;
  sura_details_args({required this.title,required this.index});
}
