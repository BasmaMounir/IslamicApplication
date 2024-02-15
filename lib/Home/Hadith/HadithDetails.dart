import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/Home/Hadith/ItemHadithDetails.dart';
import 'package:islamic_app/my_theme.dart';
import 'package:islamic_app/providers/AppConfigProvider.dart';
import 'package:provider/provider.dart';

class HadithDetails extends StatefulWidget {
  static const String routeName = 'HadithDetails';

  @override
  State<HadithDetails> createState() => _HadithDetailsState();
}

class _HadithDetailsState extends State<HadithDetails> {
  List<String> Hadith = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as HadihDetailsArgs;
    if (Hadith.isEmpty) {
      loadFiles(args.indx);
    }
    return Stack(children: [
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
              args.HadithName,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          body: Hadith.isEmpty
              ? Center(
              child: CircularProgressIndicator(
                  color: provider.isDarkMode()
                      ? myTheme.yellowColor
                      : myTheme.primaryColor,
                ))
              : Container(
            alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.06,
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: provider.isDarkMode()
                          ? myTheme.primaryDark
                          : Colors.white),
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: provider.isDarkMode()
                            ? myTheme.yellowColor
                            : myTheme.primaryColor,
                      );
                    },
                    itemBuilder: (context, index) {
                      return ItemHadithDetails(
                        hadith: Hadith[index],
                );
              },
              itemCount: Hadith.length,
            ),
          ))
    ]);
  }

  void loadFiles(int index) async {
    String content =
        await rootBundle.loadString('assets/files/hadith/h${index + 1}.txt');
    Hadith = content.trim().split('\n');
    setState(() {});
  }
}

class HadihDetailsArgs {
  String HadithName;
  int indx;

  HadihDetailsArgs({required this.HadithName, required this.indx});
}
