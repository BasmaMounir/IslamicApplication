import 'package:flutter/material.dart';
import 'package:islamic_app/my_theme.dart';
import 'package:islamic_app/providers/AppConfigProvider.dart';
import 'package:provider/provider.dart';

class ItemSuraDetails extends StatelessWidget {
  String verse;
  int indx;

  ItemSuraDetails({required this.verse, required this.indx});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Text(
      '$verse ﴿${indx + 1}﴾',
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
          color:
              provider.isDarkMode() ? myTheme.yellowColor : myTheme.blackColor),
    );
  }
}
