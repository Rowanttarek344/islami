import 'package:flutter/material.dart';
import 'package:islami/quran/sura_details.dart';

class suran_name extends StatefulWidget {
  String name;
  int index;
  suran_name({required this.name,required this.index});

  @override
  State<suran_name> createState() => _suran_nameState();
}

class _suran_nameState extends State<suran_name> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(sura_details.routeName,
        arguments: sura_details_args(title: widget.name));
        setState(() {

        });

      },

      child: Text(
        '${widget.name}',
        style: Theme.of(context).textTheme.subtitle1,
        textAlign: TextAlign.center,
      ),
    );
  }
}
