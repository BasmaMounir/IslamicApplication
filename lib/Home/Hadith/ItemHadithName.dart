import 'package:flutter/material.dart';
import 'package:islamic_app/Home/Hadith/HadithDetails.dart';

class ItemHadithName extends StatelessWidget {
  String HadithName;
  int indx;

  ItemHadithName({required this.HadithName, required this.indx});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadithDetails.routeName,
            arguments: HadihDetailsArgs(HadithName: HadithName, indx: indx));
      },
      child: Text(
        HadithName,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
