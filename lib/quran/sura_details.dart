import 'package:flutter/material.dart';

class sura_details extends StatelessWidget {
  static const String routeName='sura-details';

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)!.settings.arguments as sura_details_args;

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
          color: Colors.white,
        ),
      ),
    ]);
  }
}
class sura_details_args {
  String title;
  sura_details_args({required this.title});
}
