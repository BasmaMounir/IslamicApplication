import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/Home/Quran/ItemSuraDetails.dart';
import 'package:islamic_app/my_theme.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'SuraDetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> Verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (Verses.isEmpty) {
      loadFiles(args.indx);
    }
    return Stack(children: [
      Image.asset(
        'assets/images/main_background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
          appBar: AppBar(
            title: Text(
              args.suraName,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          body: Verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                  color: myTheme.primaryColor,
                ))
              : Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.06,
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                  ),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(-10, -10),
                            blurRadius: 5)
                      ],
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white),
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: myTheme.primaryColor,
                      );
                    },
                    itemBuilder: (context, index) {
                      return ItemSuraDetails(
                        verse: Verses[index],
                        indx: index,
                      );
                    },
                    itemCount: Verses.length,
                  ),
                ))
    ]);
  }

  void loadFiles(int index) async {
    String content =
        await rootBundle.loadString('assets/files/quran/${index + 1}.txt');
    Verses = content.trim().split('\n');
    setState(() {});
  }
}

class SuraDetailsArgs {
  String suraName;
  int indx;

  SuraDetailsArgs({required this.suraName, required this.indx});
}
