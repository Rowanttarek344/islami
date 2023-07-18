import 'package:flutter/material.dart';

class sura_details_item extends StatelessWidget {
  String text;
  int index;
  sura_details_item({required this.text, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${text}(${index + 1})',
      style: Theme.of(context).primaryTextTheme.subtitle2,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}
