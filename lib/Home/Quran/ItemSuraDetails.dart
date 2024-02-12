import 'package:flutter/material.dart';

class ItemSuraDetails extends StatelessWidget {
  String verse;
  int indx;

  ItemSuraDetails({required this.verse, required this.indx});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$verse ﴿${indx + 1}﴾',
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style: Theme.of(context).textTheme.titleSmall,
    );
  }
}
