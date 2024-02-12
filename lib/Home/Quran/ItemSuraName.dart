import 'package:flutter/material.dart';
import 'package:islamic_app/Home/Quran/SuraDetails.dart';

class ItemSuraName extends StatelessWidget {
  String name;
  int indx;

  ItemSuraName({required this.name, required this.indx});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetails.routeName,
            arguments: SuraDetailsArgs(suraName: name, indx: indx));
      },
      child: Text(
        name,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
