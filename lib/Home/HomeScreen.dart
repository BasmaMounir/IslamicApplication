import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/Home/Hadith/hadithTab.dart';
import 'package:islamic_app/Home/Quran/quranTab.dart';
import 'package:islamic_app/Home/Radio/radioTab.dart';
import 'package:islamic_app/Home/Sebha/sebhaTab.dart';
import 'package:islamic_app/Home/settings/SettingsTab.dart';
import 'package:islamic_app/my_theme.dart';
import 'package:islamic_app/providers/AppConfigProvider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [
        Image.asset(
          provider.isDarkMode()
              ? 'assets/images/main_background_dark.png'
              : 'assets/images/main_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.app_title,
              style: GoogleFonts.lato(
                  fontSize: 40,
                  color: provider.isDarkMode()
                      ? Colors.white
                      : myTheme.blackColor),
            ),
          ),
          bottomNavigationBar: Theme(
            data: provider.isDarkMode()
                ? Theme.of(context).copyWith(
                    canvasColor: myTheme.primaryDark,
                  )
                : Theme.of(context).copyWith(
                    canvasColor: myTheme.primaryColor,
                  ),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (indx) {
                selectedIndex = indx;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/radio_icon.png')),
                    label: AppLocalizations.of(context)!.radio),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/sebha_icon.png')),
                    label: AppLocalizations.of(context)!.sebha),
                BottomNavigationBarItem(
                    icon:
                        ImageIcon(AssetImage('assets/images/hadith_icon.png')),
                    label: AppLocalizations.of(context)!.hadith),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/quran_icon.png')),
                    label: AppLocalizations.of(context)!.quran),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.settings),
              ],
            ),
          ),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    RadioTab(),
    SebhaTab(),
    HadithTab(),
    QuranTab(),
    SettingsTab()
  ];
}
