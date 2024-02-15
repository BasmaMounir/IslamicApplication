import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic_app/my_theme.dart';
import 'package:islamic_app/providers/AppConfigProvider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
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
                return provider.ChangeLanguage('en');
              },
              child: provider.appLanguage == 'en'
                  ? selectedItem(AppLocalizations.of(context)!.english)
                  : unselectedItem(AppLocalizations.of(context)!.english)),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              return provider.ChangeLanguage('ar');
            },
            child: provider.appLanguage == 'ar'
                ? selectedItem(AppLocalizations.of(context)!.arabic)
                : unselectedItem(AppLocalizations.of(context)!.arabic),
          ),
        ],
      ),
    );
  }

  Widget selectedItem(String language) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          language,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: myTheme.primaryColor),
        ),
        Icon(Icons.check),
      ],
    );
  }

  Widget unselectedItem(String language) {
    return Text(
      language,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
