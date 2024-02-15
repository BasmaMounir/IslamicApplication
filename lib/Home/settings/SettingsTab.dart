import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic_app/Home/settings/showLanguageBottomSheet.dart';
import 'package:islamic_app/my_theme.dart';
import 'package:islamic_app/providers/AppConfigProvider.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.language,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        InkWell(
          onTap: () {
            showLanguageBottomSheet();
          },
          child: Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: myTheme.primaryColor,
                borderRadius: BorderRadius.circular(25)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  provider.appLanguage == 'en'
                      ? AppLocalizations.of(context)!.english
                      : AppLocalizations.of(context)!.arabic,
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return LanguageBottomSheet();
        });
  }
}
