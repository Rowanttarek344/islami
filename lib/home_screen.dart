import 'package:flutter/material.dart';
import 'package:islami/MyTheme.dart';
import 'package:islami/hadeth_tab.dart';
import 'package:islami/quran/quran_tab.dart';
import 'package:islami/radio_tab.dart';
import 'package:islami/sebha_tab.dart';

class home_screen extends StatefulWidget {

static const String routeName='home-screen';

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
List<Widget> tabs=[
  radio_tab(),sebha_tab(),hadeth_tab(),quran_tab()
];

int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/background.png',
          fit: BoxFit.fill,
          height: double.infinity,
          width: double.infinity,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text('Islami',style: Theme.of(context).textTheme.headline1,),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(canvasColor: MyTheme.gold_primary),
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
                    label: 'Radio'
                  ),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/ic_sebha.png')),
                      label: 'Sebha'
                  ),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/ic_hadeth.png')),
                      label: 'Hadeth'
                  ),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/ic_quran.png')),
                      label: 'Quran'
                  ),


                ]),


          ) ,
          body: tabs[selectedIndex]
          ),





      ],
    ) ;



  }
}
