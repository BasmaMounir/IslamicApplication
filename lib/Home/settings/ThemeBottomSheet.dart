import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic_app/my_theme.dart';
import 'package:provider/provider.dart';

import '../../providers/AppConfigProvider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                return provider.ChangeThemeMode(ThemeMode.light);
              },
              child: provider.isDarkMode()
                  ? unselectedItem(AppLocalizations.of(context)!.light)
                  : selectedItem(AppLocalizations.of(context)!.light)),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              return provider.ChangeThemeMode(ThemeMode.dark);
            },
            child: provider.isDarkMode()
                ? selectedItem(AppLocalizations.of(context)!.dark)
                : unselectedItem(AppLocalizations.of(context)!.dark),
          ),
        ],
      ),
    );
  }

  Widget selectedItem(String language) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          language,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: provider.isDarkMode()
                    ? myTheme.yellowColor
                    : myTheme.primaryColor,
              ),
        ),
        Icon(Icons.check),
      ],
    );
  }

  Widget unselectedItem(String language) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Text(language,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: provider.isDarkMode()
                ? myTheme.blackColor
                : myTheme.blackColor));
  }
}
