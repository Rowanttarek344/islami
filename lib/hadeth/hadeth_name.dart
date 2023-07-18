import 'package:flutter/material.dart';
import 'package:islami_new/hadeth/hadeth_details.dart';

class hadeth_name extends StatelessWidget {
  String name;
  List<String> content;
  hadeth_name({required this.name,required this.content});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(hadeth_details.routeName,
        arguments: hadeth_details_args(title: name, content: content));
      },
      child: Text(
        '${name}',
        style: Theme.of(context).primaryTextTheme.subtitle1,
        textAlign: TextAlign.center,
      ),
    );
  }
}
