import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic_app/Home/Hadith/ItemHadithName.dart';
import 'package:islamic_app/my_theme.dart';
import 'package:provider/provider.dart';

import '../../providers/AppConfigProvider.dart';

class HadithTab extends StatelessWidget {
  List<int> hadithNumber = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30,
    31,
    32,
    33,
    34,
    35,
    36,
    37,
    38,
    39,
    40,
    41,
    42,
    43,
    44,
    45,
    46,
    47,
    48,
    49,
    50
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Column(
      children: [
        Center(child: Image.asset('assets/images/hadith_logo.png')),
        Divider(
          color: provider.isDarkMode()
              ? myTheme.yellowColor
              : myTheme.primaryColor,
          thickness: 3,
        ),
        Text(
          AppLocalizations.of(context)!.hadith_name,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Divider(
          color: myTheme.primaryColor,
          thickness: 3,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Center(
                  child: ItemHadithName(
                      HadithName: ' ${hadithNumber[index]} الحديث رقم ',
                      indx: index));
            },
            itemCount: hadithNumber.length,
          ),
        ),
      ],
    );
  }
}
