import 'package:flutter/material.dart';
import 'package:islamic_app/Home/Hadith/hadithTab.dart';
import 'package:islamic_app/Home/Quran/quranTab.dart';
import 'package:islamic_app/Home/Radio/radioTab.dart';
import 'package:islamic_app/Home/Sebha/sebhaTab.dart';
import 'package:islamic_app/my_theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'إسلامي',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
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
                    label: 'راديو'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/sebha_icon.png')),
                    label: 'سبحة'),
                BottomNavigationBarItem(
                    icon:
                        ImageIcon(AssetImage('assets/images/hadith_icon.png')),
                    label: 'حديث'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/quran_icon.png')),
                    label: 'قرآن'),
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
  ];
}
